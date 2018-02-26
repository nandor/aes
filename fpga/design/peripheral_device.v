
module DUT(    
  output reg [4:0] Knoc16Test10PC10nz_pc_export,
  output reg [7:0] ksubsGpioLeds,
  input [7:0] ksubsGpioSwitches,
  output reg [7:0] ksubsAbendSyndrome,
  output reg [7:0] ksubsManualWaypoint,
  // NOC16 Service.
  output reg [63:0] Ksubs3_Noc16_TxData_lo,
  output reg [7:0]  Ksubs3_Noc16_TxData_cmd,
  output reg        Ksubs3_Noc16_TxData_valid,
  input             Ksubs3_Noc16_TxData_rdy, 

  input [63:0]      Ksubs3_Noc16_RxData_lo,
  input [7:0]       Ksubs3_Noc16_RxData_cmd,
  input             Ksubs3_Noc16_RxData_valid,
  output reg        Ksubs3_Noc16_RxData_rdy,

  // Serial number output.
  output reg [23:0] designSerialNumber,
  // 64-bit output. 
  output [31:0]   result_hi,
  output [31:0]   result_lo, 
  // Clock & Reset.
  input clk,
  input reset);

  reg[31:0] number;

  always @(posedge clk) begin
    if (reset) begin
      designSerialNumber <= 32'd0;
      Ksubs3_Noc16_TxData_valid <= 0;
      Ksubs3_Noc16_RxData_rdy <= 0;

      number <= 0;
    end else begin
      designSerialNumber <= 32'd5;
       
      if (number == 0) begin
        Ksubs3_Noc16_RxData_rdy <= 1;
        Ksubs3_Noc16_TxData_valid <= 0;
        
        if (Ksubs3_Noc16_RxData_valid) begin
          number <= Ksubs3_Noc16_RxData_lo;
        end
      end else begin
        if (Ksubs3_Noc16_TxData_rdy) begin
          Ksubs3_Noc16_RxData_rdy <= 0;
          Ksubs3_Noc16_TxData_valid <= 1;

          Ksubs3_Noc16_TxData_cmd <= 8'hEF;
          Ksubs3_Noc16_TxData_lo <= number * 2;
          
          number <= 0;
        end else begin
          Ksubs3_Noc16_TxData_valid <= 0;
        end
      end
    end
  end   

endmodule

