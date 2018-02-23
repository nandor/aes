// Kiwi Scientific Acceleration
// (C) 2014 DJ Greaves - University of Cambridge, Computer Laboratory
//
//
//
// ksubs3_axi_pio_target.v
//


/*
 code for instantiation:
  cbg_axi cbg_axi_0(
   .clk(ACLK),
   .reset_n(ARESET_N),
   .maxi_araddr(M00_AXI_araddr),
   .maxi_arprot(M00_AXI_arprot),
   .maxi_arready(M00_AXI_arready),
   .maxi_arvalid(M00_AXI_arvalid),
   .maxi_awaddr(M00_AXI_awaddr),
   .maxi_awprot(M00_AXI_awprot),
   .maxi_awready(M00_AXI_awready),
   .maxi_awvalid(M00_AXI_awvalid),
   .maxi_bready(M00_AXI_bready),
   .maxi_bresp(M00_AXI_bresp),
   .maxi_bvalid(M00_AXI_bvalid),
   .maxi_rdata(M00_AXI_rdata),
   .maxi_rready(M00_AXI_rready),
   .maxi_rresp(M00_AXI_rresp),
   .maxi_rvalid(M00_AXI_rvalid),
   .maxi_wdata(M00_AXI_wdata),
   .maxi_wready(M00_AXI_wready),
   .maxi_wstrb(M00_AXI_wstrb),
   .maxi_wvalid(M00_AXI_wvalid));

*/


//  The slave asserts READY when it can accept new transfers (VALID doesn't have to be asserted for this).
//  The master asserts VALID when it has something to transfer (READY doesn't have to be asserted for this).
//  A master can't wait with asserting VALID until a READY is asserted since the slave can wait for VALID before asserting READY.
//  If the master waits for READY, this can create a deadlock where both master and slaves waits for each other to assert the signal.

	 
// Note: to avoid deadlock the VALID signal of one AXI component must not be dependent on the READY signal of the other component 
// in the transaction and the READY signal can wait for assertion of the VALID signal.

//
// Simple polled Kiwi Substrate for AXI/Zynq 
//   Slave supported.
//   DMA missing in this version
//   Interrupts missing in this version

module ksubs3_axi_pio_target(
  input 	clk,
  input 	reset_n,

  input [23:0] 	mon0,
  input [23:0] 	mon1,
  input [23:0] 	runtime0,

  input [7:0] 	ksubsGpioLeds,
  input [7:0] 	ksubsAbendSyndrome,
 
			// Programmed I/O access to director shim
  output [11:0] pio_addr, // Only 10 bits can be exercises of this address bus with the simple devmem2 skeleton!
  input [31:0] 	pio_rdata,
  output [31:0] pio_wdata,
  output 	pio_hwen,



			     // Ksubs Noc16 duplex interface: server-side net directions.
  input [63:0] 	Ksubs3_Noc16_TxData_lo,
  //input [63:0] 	Ksubs3_Noc16_TxData_hi,
  input [7:0] 	Ksubs3_Noc16_TxData_cmd,
  input 	Ksubs3_Noc16_TxData_valid,
  output 	Ksubs3_Noc16_TxData_rdy,

  output [63:0] Ksubs3_Noc16_RxData_lo,
  //output [63:0] Ksubs3_Noc16_RxData_hi,
  output [7:0] 	Ksubs3_Noc16_RxData_cmd,
  output 	Ksubs3_Noc16_RxData_valid,
  input 	Ksubs3_Noc16_RxData_rdy,

			     

  input [31:0] 	waypoint,
  output [1:0] 	ksubs_runstop,
  input [31:0] 	result_hi, result_lo,

  // AXI BUS SLAVE
  input [31:0] 	maxi_araddr, // Read address
  input [2:0] 	maxi_arprot,
  output 	maxi_arready,
  input 	maxi_arvalid,


  output [31:0] maxi_rdata, // Read data
  input 	maxi_rready,
  output [1:0] 	maxi_rresp,
  output reg 	maxi_rvalid,

  input [31:0] 	maxi_awaddr, // Write address
  input [2:0] 	maxi_awprot,
  output 	maxi_awready,
  input 	maxi_awvalid,


  input [31:0] 	maxi_wdata, // Write data
  output 	maxi_wready,
  input [3:0] 	maxi_wstrb,
  input 	maxi_wvalid,

  input 	maxi_bready, // Write response
  output [1:0] 	maxi_bresp,
  output reg 	maxi_bvalid,

  input [23:0] 	designSerialNumber,

			   
  output 	gpio_led);
  
  assign maxi_arready = 1; // always ready

  assign maxi_awready = 1; // always ready, but perhaps disable if peer is logged next.
  assign maxi_wready = 1;  // always ready

  assign maxi_bresp = 2'd0; // code 00 is ok 


   reg 	    have_wdata, have_waddr;
   wire	    wstrobe = have_wdata && have_waddr;
   
  always @(posedge clk) if (!reset_n) begin
     maxi_rvalid <= 0;
     maxi_bvalid <= 0; have_wdata <= 0; have_waddr <= 0;
     end
     else begin
	// RVALID - reply to a read
        if (maxi_arready && maxi_arvalid) maxi_rvalid <= 1;
        else if (maxi_rvalid && maxi_rready) maxi_rvalid <=0;


        if (maxi_awready && maxi_awvalid) have_waddr <= 1;
        if (maxi_wready && maxi_wvalid) have_wdata <= 1;	
	
	// BVALID - ack a write
        if (!maxi_bvalid && have_waddr && have_wdata) begin
	   maxi_bvalid <= 1;
	   have_wdata <=0; have_waddr <= 0;
	end
	
        else if (maxi_bvalid && maxi_bready) maxi_bvalid <= 0;

     end
        
   reg [15:0] counter;
   reg [15:0] ksubs_control_reg;
   reg [11:0] slave_read_regno;
   reg [11:0] slave_write_regno;   


   reg [31:0] rx_Noc16_data32_hi;
   reg [31:0] rx_Noc16_data32_lo;
   reg [7:0]  rx_Noc16_data32_cmd;

   reg 	      rdstrobe;
   wire       wrstrobe = have_wdata && have_waddr;
   reg 	      rx_noc16_send; 

   wire       tx_fifo_wren;
   always @(posedge clk) if (!reset_n) begin
      counter <= 0;
      ksubs_control_reg <= 0;
      slave_read_regno <= 0;
      rx_noc16_send <= 0;
   end
   else begin
      rx_noc16_send <= 0;      
      if (maxi_awvalid && maxi_awready) slave_write_regno <= maxi_awaddr >> 2;
      rdstrobe <= (maxi_arvalid && maxi_arready);
      if (maxi_arvalid && maxi_arready) slave_read_regno  <= maxi_araddr >> 2;
      if (wrstrobe) begin
         if (slave_write_regno == 2) ksubs_control_reg <= { maxi_wstrb, maxi_wdata[27:0] };
         else if (slave_write_regno == 12) rx_Noc16_data32_lo <= maxi_wdata;
         else if (slave_write_regno == 13) rx_Noc16_data32_hi <= maxi_wdata;
         else if (slave_write_regno == 14) begin rx_Noc16_data32_cmd <= maxi_wdata[7:0]; rx_noc16_send <= 1; end

      end
      if (tx_fifo_wren) counter <= counter + 1;
   end
   
   assign pio_hwen = wrstrobe && slave_write_regno >= 16;  // This is when >=64 (0x40) after shift of 2 above from raw addr to regno.
   assign gpio_led = ksubs_control_reg[0];
   assign maxi_rresp = 2'd0; // ok code 00
   assign pio_addr = ((pio_hwen) ? slave_write_regno: slave_read_regno)<<2;
   assign pio_wdata = maxi_wdata;

/*

 Programmer's view memory map
 0 0x43c00000 serial no
 1 0x43c00004 counter 
 2 0x43c00008 write fold, run/stop and interrupt control in future.
 3 0x43c0000c mon0
 4  0x43c00010 mon1
 5  0x43c00014 waypoint
 6  0x43c00018 result_lo
 7  0x43c0001c result_hi
 8  0x43c00020 tx_Noc16_lo
 9  0x43c00024 tx_Noc16_hi 
10  0x43c00028 tx_Noc16_status 
11  0x43c0002c <spare>
12  0x43c00030 rx_Noc16_lo
13  0x43c00034 rx_Noc16_hi 
14  0x43c00038 rx_Noc16_status 
15  0x43c0003c <spare>
 
  0x43c00040 pio
 
 */
   wire [71:0] tx_Noc16_data;
   wire        tx_Noc16_datardy;
   wire        rx_fifo_empty;
   wire        rx_fifo_full;
   wire [15:0] rx_rdcount, rx_wrcount;
   assign maxi_rdata = 
		       (slave_read_regno == 0 )? { 8'h65, designSerialNumber }:
		       (slave_read_regno == 1 )? { counter, counter }:
		       (slave_read_regno == 2 )? { ksubsAbendSyndrome, ksubsGpioLeds, ksubs_control_reg }:
		       (slave_read_regno == 3 )? { 8'hC2, mon0 }: 
		       (slave_read_regno == 4 )? { 8'hC3, mon1 }:
		       //(slave_read_regno == 5 )? { 8'hC4, runtime0 }:
		       (slave_read_regno == 5 )? waypoint:
		       (slave_read_regno == 6 )? result_lo:
		       (slave_read_regno == 7 )? result_hi:

		       (slave_read_regno == 8 )? { tx_Noc16_data[31:0] }:
		       (slave_read_regno == 9 )? { tx_Noc16_data[63:32] }:	
		       (slave_read_regno == 10 )? { tx_Noc16_datardy, tx_Noc16_data[71:64] }:

		       (slave_read_regno == 14 )? { rx_fifo_empty, !rx_fifo_full, 8'h00 }:
		       (slave_read_regno == 15 )? { rx_rdcount, rx_wrcount }:		       
	       
		       pio_rdata;

   wire        tx_noc16_get = rdstrobe && (slave_read_regno == 9);

// Noc16 FIFOS

   // Transmit (from point-of-view of DUT) direction - data sent by the DUT to host.
   wire tx_fifo_empty;
   wire tx_fifo_full;
   wire tx_fifo_rden = tx_noc16_get;
   wire fifo_reset = ksubs_control_reg[1]; 
   assign ksubs_runstop = ksubs_control_reg[5:4]; 
   
   assign tx_fifo_wren = Ksubs3_Noc16_TxData_valid && Ksubs3_Noc16_TxData_rdy;
   assign Ksubs3_Noc16_TxData_rdy = !tx_fifo_full;
   assign tx_Noc16_datardy = !tx_fifo_empty;

  `ifdef notdef 
   FIFO_SYNC_MACRO #( 
		      .DEVICE("7SERIES"), // Target Device: "7SERIES"
		      //	.ALMOST_EMPTY_OFFSET(9'h080), // Sets the almost empty threshold
		      //	.ALMOST_FULL_OFFSET(9'h080), // Sets almost full threshold
		      .DATA_WIDTH(72), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE(="36Kb") 
		      .DO_REG(0), // Optional output register (0 or 1)
		      .FIFO_SIZE ("36Kb"), // Target BRAM: "18Kb" or "36Kb" 
		      .FIRST_WORD_FALL_THROUGH("true")
		      )
   
   TX_fifo ( 
	     //.ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit outputalmost empty 
	     //.ALMOSTFULL(ALMOSTFULL), // 1-bit output almost full
	     .DO(tx_Noc16_data),
	     .EMPTY(tx_fifo_empty),
	     .FULL(tx_fifo_full), 
	     //.RDCOUNT(RDCOUNT), // Output read count, width determined by FIfor depth 
	     //.RDERR(RDERR), // 1-bit output read error 
	     //.WRCOUNT(WRCOUNT), //Output write count, width determined by FIfor depth 
	     //.WRERR(WRERR), //1-bit output write error 
	     .CLK(clk), // 1-bit input clock 
	     .DI({Ksubs3_Noc16_TxData_cmd, Ksubs3_Noc16_TxData_lo}), //Input data from DUT
	     .RDEN(tx_fifo_rden),
	     .RST(fifo_reset), // 1-bit input reset 
	     .WREN(tx_fifo_wren)
	);
`endif

   // Receive (from point-of-view of DUT) direction - data sent to DUT.

   wire rx_fifo_rden;
   wire rx_fifo_wren = rx_noc16_send;
   wire [71:0] rx_Noc16_data  = { rx_Noc16_data32_cmd, rx_Noc16_data32_hi, rx_Noc16_data32_lo };

   assign rx_fifo_rden = Ksubs3_Noc16_RxData_valid && Ksubs3_Noc16_RxData_rdy;
   assign Ksubs3_Noc16_RxData_valid = !rx_fifo_empty;


   // /usr/groups/ecad/xilinx/Vivado2017/Vivado/2016.4/data/verilog/src/unimacro/FIFO_SYNC_MACRO.v


   FIFO36E1 #( 
	       //.almost_empty_offset(almost_empty_offset),
	       //.almost_full_offset(almost_full_offset),
               .DATA_WIDTH(72),
               .DO_REG(1),
               .EN_SYN("FALSE"),
	       .FIFO_MODE("FIFO36_72"),
               .FIRST_WORD_FALL_THROUGH("TRUE")
	       //.init(init),
	       //.srval(srval)
               ) 

   noc16_tx_fifo(
                 //.almostempty(almostempty),                .almostfull(almostfull), .dbiterr(),
		 .DO(tx_Noc16_data[63:0]), .DOP(tx_Noc16_data[71:64]),
                 //.eccparity(),
                 .EMPTY(tx_fifo_empty),
                 .FULL(tx_fifo_full),
                 //.rdcount(tx_rdcount),
                 //.rderr(rderr),
                 //.sbiterr(),
                 .WRCOUNT(tx_wrcount),
                 //.wrerr(wrerr),
                 .DI({Ksubs3_Noc16_TxData_lo}), .DIP(Ksubs3_Noc16_TxData_cmd),
                 //.injectdbiterr(1'b0), .injectsbiterr(1'b0),
                 .RDEN(tx_fifo_rden),
                 //.REGCE(REGCE_PATTERN),
                 .RST(fifo_reset),
                 //.RSTREG(RSTREG_PATTERN),
                 .WRCLK(clk),                  .RDCLK(clk),
                 .WREN(tx_fifo_wren)
                 );
   
   FIFO36E1 #( 
	       //.almost_empty_offset(almost_empty_offset),
	       //.almost_full_offset(almost_full_offset),
               .DATA_WIDTH(72),
               .DO_REG(1),
               .EN_SYN("FALSE"),
	       .FIFO_MODE("FIFO36_72"),
               .FIRST_WORD_FALL_THROUGH("TRUE")
	       //.init(init),
	       //.srval(srval)
               ) 

   noc16_rx_fifo (
                  //.almostempty(almostempty),                .almostfull(almostfull), .dbiterr(),
                 .DO({Ksubs3_Noc16_RxData_lo}), .DOP(Ksubs3_Noc16_RxData_cmd),
                  //.eccparity(),
                  .EMPTY(rx_fifo_empty),
                  .FULL(rx_fifo_full),
                  .RDCOUNT(rx_rdcount),
                  //.rderr(rderr),
                  //.sbiterr(),
                  .WRCOUNT(rx_wrcount),
                  //.wrerr(wrerr),
                  .DI(rx_Noc16_data[63:0]),
                  .DIP(rx_Noc16_data[71:64]),
                  //.injectdbiterr(1'b0), .injectsbiterr(1'b0),
                  .RDEN(rx_fifo_rden),
                  //.REGCE(REGCE_PATTERN),
                  .RST(fifo_reset),
                  //.RSTREG(RSTREG_PATTERN),
                  .WRCLK(clk),                  .RDCLK(clk),
                  .WREN(rx_fifo_wren)
                  );

`ifdef notdef
   FIFO_SYNC_MACRO #( 
		      .DEVICE("7SERIES"), // Target Device: "7SERIES"
		      //	.ALMOST_EMPTY_OFFSET(9'h080), // Sets the almost empty threshold
		      //	.ALMOST_FULL_OFFSET(9'h080), // Sets almost full threshold
		      .DATA_WIDTH(72), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE(="36Kb") 
		      .DO_REG(0), // Optional output register (0 or 1)
		      .FIFO_SIZE ("36Kb"), // Target BRAM: "18Kb" or "36Kb" 
		      .FIRST_WORD_FALL_THROUGH("true")
		      )
   
   RX_fifo ( 
	     //.ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit outputalmost empty 
	     //.ALMOSTFULL(ALMOSTFULL), // 1-bit output almost full
	     .DO({Ksubs3_Noc16_RxData_cmd, Ksubs3_Noc16_RxData_lo}), // Output data to DUT
	     .EMPTY(rx_fifo_empty),
	     .FULL(rx_fifo_full), 
	     .RDCOUNT(rx_rdcount), // Output read count, width determined by FIfor depth 
	     //.RDERR(RDERR), // 1-bit output read error 
	     .WRCOUNT(rx_wrcount), //Output write count, width determined by FIfor depth 
	     //.WRERR(WRERR), //1-bit output write error 
	     .CLK(clk),
	     .DI(rx_Noc16_data), 
	     .RDEN(rx_fifo_rden),
	     .RST(fifo_reset), // 1-bit input reset 
	     .WREN(rx_fifo_wren)
	);
`endif //  `if 0
   
endmodule
// EOF
