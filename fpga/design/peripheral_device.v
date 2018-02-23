
module DUT(    
  output reg [4:0] Knoc16Test10PC10nz_pc_export,
  output reg [7:0] ksubsGpioLeds,
  input [7:0] ksubsGpioSwitches,
  output reg [7:0] ksubsAbendSyndrome,
  output reg [7:0] ksubsManualWaypoint,
  // NOC8 Service.
  input [63:0]   Ksubs3_Noc16_TxData_lo,
  input [7:0]    Ksubs3_Noc16_TxData_cmd,
  input          Ksubs3_Noc16_TxData_valid,
  output         Ksubs3_Noc16_TxData_rdy,
  output [63:0]  Ksubs3_Noc16_RxData_lo,
  output [7:0]   Ksubs3_Noc16_RxData_cmd,
  output         Ksubs3_Noc16_RxData_valid,
  input          Ksubs3_Noc16_RxData_rdy,
  // Serial number output.
  output reg [31:0] designSerialNumber,
  // 64-bit output. 
  output [31:0]   result_hi,
  output [31:0]   result_lo, 
  // Clock & Reset.
  input clk,
  input reset);

  always @(posedge clk) begin
    designSerialNumber <= 32'd1236;
    ksubsGpioLeds <= ksubsGpioSwitches;
  end   
endmodule

