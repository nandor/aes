`timescale 1ns / 1ps

// Kiwi Scientific Acceleration
// Ksubs3 substrate wrapper toplevel for Zynq
// Rev 0.0  (C) 2015 DJ Greaves


module ksubs3_zynq_toplevel
   (
`ifdef PARCARD10
    output GPIO0_N, output GPIO0_P,
    output GPIO1_N, output GPIO1_P,
    output GPIO2_N, output GPIO2_P,
    output GPIO3_N, output GPIO3_P,
    output GPIO4_N, output GPIO4_P,
    output GPIO5_N, output GPIO5_P,
    output GPIO7_N, output GPIO7_P,
`endif

`ifdef ZEDBOARD20
    input  GCLK_in /*33 MHz Y9*/,
    input  BTNC, BTND, BTNL, BTNR, BTNU,
    input  USER_SW7, input USER_SW6, input USER_SW5, input USER_SW4,
    input  USER_SW3, input USER_SW2, input USER_SW1, input USER_SW0,
    output USER_LD7, output USER_LD6, output USER_LD5, output USER_LD4,
    output USER_LD3, output USER_LD2, output USER_LD1, output USER_LD0,
`endif

`ifdef PYNQ20
    output [3:0] led,
    input [3:0] btn,
`endif
    
    inout [14:0]DDR_addr,
    inout [2:0]DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p,
    inout DDR_cke,
    inout DDR_cs_n,
    inout [3:0]DDR_dm,
    inout [31:0]DDR_dq,
    inout [3:0]DDR_dqs_n,
    inout [3:0]DDR_dqs_p,
    inout DDR_odt,
    inout DDR_ras_n,
    inout DDR_reset_n,
    inout DDR_we_n,
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb
    );
   


   wire [7:0] ksubsGpioSwitches;
   wire [7:0] ksubsGpioLeds;

`ifdef PYNQ20
   // Only 4 out of 8 are wired up in each direction for now.
   assign led = ksubsGpioLeds[3:0];
   assign ksubsGpioSwitches[3:0] = btn;
`endif

   
`ifdef PARCARD10
   // Parcard-djg3 has an LED soldered to GPIO0 - drive both N and P in parallel please.
   assign GPIO0_N = ksubsGpioLeds[0];
   assign GPIO0_P = ksubsGpioLeds[0];
`endif



`ifdef ZEDBOARD20
   wire [7:0] 	     user_sliders = { USER_SW7, USER_SW6, USER_SW5, USER_SW4, USER_SW3, USER_SW2, USER_SW1, USER_SW0 };
   wire [7:0] 	     zed_user_leds;
   assign ksubsGpioSwitches = user_sliders;
   
   assign { USER_LD7, USER_LD6, USER_LD5, USER_LD4, USER_LD3, USER_LD2, USER_LD1, USER_LD0 } = zed_user_leds;
   assign zed_user_leds = ksubsGpioLeds

`endif
   
 

  wire ACLK;
  wire ARESET_N;
  wire [31:0]M00_AXI_araddr;
  wire [2:0]M00_AXI_arprot;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire [2:0]M00_AXI_awprot;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;

  wire [31:0] elimit;


   wire [23:0] designSerialNumber; 
   wire [23:0] runtime0;
   wire [31:0] count;
   wire [31:0] waypoint;
   wire [31:0] result_lo, result_hi;
   wire [23:0] mon0, mon1;


   wire [7:0] 		    ksubsAbendSyndrome;

   // Programmed I/O access to director shim
   wire [11:0] 		    pio_addr;
   wire [31:0] 		    pio_rdata, pio_wdata;
   wire 		    pio_hwen;
   
   // Ksubs Noc16 duplex interface
   wire [63:0] 		    Ksubs3_Noc16_TxData_lo;
   //wire [63:0] 		    Ksubs3_Noc16_TxData_hi;
   wire [7:0] 		    Ksubs3_Noc16_TxData_cmd;
   wire 		    Ksubs3_Noc16_TxData_valid;
   wire 		    Ksubs3_Noc16_TxData_rdy;
   
   wire [63:0] 		    Ksubs3_Noc16_RxData_lo;
   //wire [63:0] 		    Ksubs3_Noc16_RxData_hi;
   wire [7:0] 		    Ksubs3_Noc16_RxData_cmd;
   wire 		    Ksubs3_Noc16_RxData_valid;
   wire 		    Ksubs3_Noc16_RxData_rdy;

   // Single-step and reset control
   wire [1:0] 		    ksubs_runstop;
   
  ksubs3_innercore ksubs3_innercore_i(
				      .clk(ACLK),
				      .mon0(mon0), .mon1(mon1),       
				      .result_hi(result_hi),  .result_lo(result_lo),
				      .ksubs_runstop(ksubs_runstop),
				      .waypoint(waypoint),
				      .runtime0(runtime0),
				      .count(count),
				      .reset_n(ARESET_N),
				      .elimit(elimit),
				      .designSerialNumber(designSerialNumber),
				      .ksubsAbendSyndrome(ksubsAbendSyndrome),
				      .ksubsGpioLeds(ksubsGpioLeds),
              .ksubsGpioSwitches(ksubsGpioSwitches),
				      // Programmed I/O access to director shim
				      .pio_hwen(pio_hwen), .pio_rdata(pio_rdata), .pio_wdata(pio_wdata), .pio_addr(pio_addr),

				      
				      // Ksubs Noc16 duplex interface
				      .Ksubs3_Noc16_TxData_lo(Ksubs3_Noc16_TxData_lo),
				      //.Ksubs3_Noc16_TxData_hi(Ksubs3_Noc16_TxData_hi),
				      .Ksubs3_Noc16_TxData_cmd(Ksubs3_Noc16_TxData_cmd),
				      .Ksubs3_Noc16_TxData_valid(Ksubs3_Noc16_TxData_valid),
				      .Ksubs3_Noc16_TxData_rdy(Ksubs3_Noc16_TxData_rdy),
				      
				      .Ksubs3_Noc16_RxData_lo(Ksubs3_Noc16_RxData_lo),
				      //.Ksubs3_Noc16_RxData_hi(Ksubs3_Noc16_RxData_hi),
				      .Ksubs3_Noc16_RxData_cmd(Ksubs3_Noc16_RxData_cmd),
				      .Ksubs3_Noc16_RxData_valid(Ksubs3_Noc16_RxData_valid),
				      .Ksubs3_Noc16_RxData_rdy(Ksubs3_Noc16_RxData_rdy)
				      
				      );
   
   
   wire 		    clk = ACLK;
    
   djgaxi zynq_axi_master_i
     (.ACLK(ACLK),
      .ARESET_N(ARESET_N),
      
      .DDR_addr(DDR_addr),
      .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid));
        

`ifdef SPARE
   reg [13:0] ctr0, ctr1;
   reg 	      ovf0;
   
   always @(posedge clk) begin
      ctr0 <= ctr0 + 1;
      ovf0 <= ctr0 == 0;
      ctr1 <= ctr1 + ovf0;
   end

   // Divide by 2**28 = 268435456  12 in 30 seconds gives 107 374 182 - i.e. 100 MHz.
   wire pipoff = ctr1[13];
          reg[3:0] ctr;  // Kiwi substrate version
          reg m0, m1, m2;
          always @(posedge ACLK) if (!ARESET_N) begin
             m0 <= 0;
             m1 <= 0;
             m2 <= 0;
             ctr <= 0;
             end
             else begin
                 ctr <= ctr + 1;
             end
`endif                          

    

   
   ksubs3_axi_pio_target
     ksubs3_axi_pio_target_i(
			     .clk(ACLK),
			     //             .gpio_led(gpio_led),
			     .reset_n(ARESET_N),
			     .runtime0(runtime0),  
			     .mon0(mon0), .mon1(mon1),       
			     .ksubsAbendSyndrome(ksubsAbendSyndrome),
			     .ksubsGpioLeds(ksubsGpioLeds),
			     
			     .designSerialNumber(designSerialNumber),
			     .result_hi(result_hi),  .result_lo(result_lo),
			     .ksubs_runstop(ksubs_runstop),
			     .waypoint(waypoint),
			     
			     // Ksubs Noc16 duplex interface
			     .Ksubs3_Noc16_TxData_lo(Ksubs3_Noc16_TxData_lo),
			     //.Ksubs3_Noc16_TxData_hi(Ksubs3_Noc16_TxData_hi),
			     .Ksubs3_Noc16_TxData_cmd(Ksubs3_Noc16_TxData_cmd),
			     .Ksubs3_Noc16_TxData_valid(Ksubs3_Noc16_TxData_valid),
			     .Ksubs3_Noc16_TxData_rdy(Ksubs3_Noc16_TxData_rdy),
			     
			     .Ksubs3_Noc16_RxData_lo(Ksubs3_Noc16_RxData_lo),
			     //.Ksubs3_Noc16_RxData_hi(Ksubs3_Noc16_RxData_hi),
			     .Ksubs3_Noc16_RxData_cmd(Ksubs3_Noc16_RxData_cmd),
			     .Ksubs3_Noc16_RxData_valid(Ksubs3_Noc16_RxData_valid),
			     .Ksubs3_Noc16_RxData_rdy(Ksubs3_Noc16_RxData_rdy),
			     
			     
			     // Programmed I/O access to director shim
			     .pio_hwen(pio_hwen), .pio_rdata(pio_rdata), .pio_wdata(pio_wdata), .pio_addr(pio_addr),
		     

			     // AXI interconnect to Zynq IP Adapators.
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
endmodule
// eof

