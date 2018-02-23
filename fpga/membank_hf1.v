// Kiwi Scientific Acceleration
//
// Xilinx-synthesisable version to BRAM.
//
module membank256_hf1 // Latency of 1.
  (input	 clk, 
   input	 reset, 
   input 	 rwbar_in, 
   output [noLanes*laneSize-1:0] 	      rdata,
   input [noLanes*laneSize-1:0] 	      wdata_in, 
   input [21:0]  wordAddr_in, 
   output  	 oprdy, // ready for new request   - a new cmd is presented for every clock cycle where rdy and req both hold.
   input 	opreq, // new op request          -
   output  	ack, // output from last cycle is available.
   input [noLanes-1:0] lanes_in
   );

   // default  #(32, 8, 800000) 
   // default  #(noLanes, laneSize, memsize) 
   parameter noLanes=32;
   parameter laneSize=8;
   parameter memsize = 32;  // Size in words.
   
   parameter tracelevel = 0;

   reg [laneSize*noLanes-1:0] 		     wdata;
   reg [31:0]                        wordAddr;
   reg [noLanes-1:0]               lanes;

   reg start;
   reg rwbar;
   //always @(posedge clk) $display(" HFAST1 req=%d ack=%d rwbar=%d  pc=%d" , start, ack, rwbar, dut.xpc10);
   
   always @(posedge clk) begin
      wordAddr <= wordAddr_in;
      wdata <= wdata_in;
      start <= opreq & oprdy;
      rwbar <= rwbar_in;
      lanes <= lanes_in;
      
        if (tracelevel > 0 && start &&  rwbar) $display("%t, %m: read-word start=%d wordAddr=%d rd=$%h", $time, start, wordAddr, rdata);
        if (tracelevel > 0 && start && !rwbar) $display("%t, %m: write-word start=%d wordAddr=%d lanes=$%h wd=$%h", $time, start, wordAddr, lanes, wdata);
      end

   genvar gi;
   generate for (gi=0; gi<noLanes; gi=gi+1) begin
     local_bram_lane_djg #(laneSize, memsize) U (clk, start, rwbar, wordAddr, lanes[gi], 
         wdata[laneSize*gi + laneSize-1: laneSize*gi],
         rdata[laneSize*gi + laneSize-1: laneSize*gi]);
     end
   endgenerate 

   assign ack = start;
   assign oprdy = 1;

endmodule


module local_bram_lane_djg(
       input clk,
       input start, 
       input rwbar,
       input [31:0] wordAddr,
       input lane_strobe,
       input [laneSize-1:0] wdata, 
       output [laneSize-1:0] rdata); 

       parameter laneSize = 8;
       parameter memsize = 32;
       reg [laneSize-1:0] datamem [0:(memsize-1)];

  always @(posedge clk) begin
      
       if (lane_strobe && !rwbar) datamem[wordAddr] <= wdata;
       end
   	    //$display("%m: lane read req=%d wordAddr=%d addr=%d laneData=%h rwbar=%d rd=$%x", req, wordAddr, byte_addr+rvv, data[byte_addr+rvv], rwbar, rans);
  assign  rdata = datamem[wordAddr];
endmodule
     //$display("%m clk : req=%d addr=%d rwbar=%d", start, wordAddr, rwbar);
      

  
// eof

