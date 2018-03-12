
module DUT(
  output reg [4:0] Knoc16Test10PC10nz_pc_export,
  output reg [7:0] ksubsGpioLeds,
  input [7:0] ksubsGpioSwitches,
  output reg [7:0] ksubsAbendSyndrome,
  output reg [7:0] ksubsManualWaypoint,
  // NOC16 output.
  output reg [63:0] Ksubs3_Noc16_TxData_lo,
  output reg [7:0]  Ksubs3_Noc16_TxData_cmd,
  output reg        Ksubs3_Noc16_TxData_valid,
  input             Ksubs3_Noc16_TxData_rdy,
  // NOC16 input.
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

  reg[4:0] rk_idx;
  reg[1:0] iv_idx;
  reg[1:0] in_idx;    
  reg[4:0] proc_idx;

  reg[127:0] buf_in;
  reg[176 * 8 - 1:0] rk;
  reg[127:0] iv;
  reg[127:0] register;

  always @(posedge clk) begin
    if (reset) begin
      designSerialNumber <= 0;
      Ksubs3_Noc16_TxData_valid <= 0;
      Ksubs3_Noc16_RxData_rdy <= 0;

      rk_idx <= 0;
      iv_idx <= 0;
      in_idx <= 0;
      proc_idx <= 0;
    end else begin
      designSerialNumber <= 32'd8;

      if (Ksubs3_Noc16_RxData_valid) begin
        case (Ksubs3_Noc16_RxData_cmd)
          8'd0: begin
            // Read in the 11 chunks of the round key.
            case (rk_idx)
               0: begin rk[63 + 64 *  0 : 64 *  0] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  1; end
               1: begin rk[63 + 64 *  1 : 64 *  1] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  2; end
               2: begin rk[63 + 64 *  2 : 64 *  2] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  3; end
               3: begin rk[63 + 64 *  3 : 64 *  3] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  4; end
               4: begin rk[63 + 64 *  4 : 64 *  4] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  5; end
               5: begin rk[63 + 64 *  5 : 64 *  5] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  6; end
               6: begin rk[63 + 64 *  6 : 64 *  6] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  7; end
               7: begin rk[63 + 64 *  7 : 64 *  7] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  8; end
               8: begin rk[63 + 64 *  8 : 64 *  8] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  9; end
               9: begin rk[63 + 64 *  9 : 64 *  9] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 10; end
              10: begin rk[63 + 64 * 10 : 64 * 10] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 11; end
              11: begin rk[63 + 64 * 11 : 64 * 11] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 12; end
              12: begin rk[63 + 64 * 12 : 64 * 12] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 13; end
              13: begin rk[63 + 64 * 13 : 64 * 13] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 14; end
              14: begin rk[63 + 64 * 14 : 64 * 14] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 15; end
              15: begin rk[63 + 64 * 15 : 64 * 15] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 16; end
              16: begin rk[63 + 64 * 16 : 64 * 16] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 17; end
              17: begin rk[63 + 64 * 17 : 64 * 17] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 18; end
              18: begin rk[63 + 64 * 18 : 64 * 18] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 19; end
              19: begin rk[63 + 64 * 19 : 64 * 19] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 20; end
              20: begin rk[63 + 64 * 20 : 64 * 20] <= Ksubs3_Noc16_RxData_lo; rk_idx <= 21; end
              21: begin rk[63 + 64 * 21 : 64 * 21] <= Ksubs3_Noc16_RxData_lo; rk_idx <=  0; end
            endcase
          end
          8'd1: begin
            // Read in the 2 chunks of the IV.
            case (iv_idx)
              0: begin iv[ 63: 0] <= Ksubs3_Noc16_RxData_lo; iv_idx <= 1; end
              1: begin iv[127:64] <= Ksubs3_Noc16_RxData_lo; iv_idx <= 0; end
            endcase
          end
          8'd2: begin
            // Read in the chunks of input (plaintext) and buffer them.
            case (in_idx)
              0: begin
                buf_in <= { 64'd0, Ksubs3_Noc16_RxData_lo };
                in_idx <= 1;
              end
              1: begin
                buf_in <= { Ksubs3_Noc16_RxData_lo, buf_in[63:0] } ^ rk[127 : 0];
                Ksubs3_Noc16_RxData_rdy <= 0;
                in_idx <= 2;
              end
            endcase
          end
        endcase
      end

      case (proc_idx)
        0: begin
          Ksubs3_Noc16_RxData_rdy <= 1;
          Ksubs3_Noc16_TxData_valid <= 0;
         
          if (in_idx == 2) begin
            register <= ShiftRows(SubBytes(iv ^ buf_in));
            in_idx <= 0;
            proc_idx <= 1;
          end
        end
        1: begin
          register <= SubBytes(rk[127 + 128 * 1 : 128 * 1] ^ MixCols(register));
          proc_idx <= 2;
        end
        2: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 3;
        end
        3: begin
          register <= SubBytes(rk[127 + 128 * 2 : 128 * 2] ^ register);
          proc_idx <= 4;
        end
        4: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 5;
        end
        5: begin
          register <= SubBytes(rk[127 + 128 * 3 : 128 * 3] ^ register);
          proc_idx <= 6;
        end
        6: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 7;
        end
        7: begin
          register <= SubBytes(rk[127 + 128 * 4 : 128 * 4] ^ register);
          proc_idx <= 8;
        end
        8: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 9;
        end
        9: begin
          register <= SubBytes(rk[127 + 128 * 5 : 128 * 5] ^ register);
          proc_idx <= 10;
        end
        10: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 11;
        end
        11: begin
          register <= SubBytes(rk[127 + 128 * 6 : 128 * 6] ^ register);
          proc_idx <= 12;
        end
        12: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 13;
        end
        13: begin
          register <= SubBytes(rk[127 + 128 * 7 : 128 * 7] ^ register);
          proc_idx <= 14;
        end
        14: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 15;
        end
        15: begin
          register <= SubBytes(rk[127 + 128 * 8 : 128 * 8] ^ register);
          proc_idx <= 16;
        end
        16: begin
          register <= MixCols(ShiftRows(register));
          proc_idx <= 17;
        end
        17: begin
          register = ShiftRows(SubBytes(rk[127 + 128 * 9 : 128 * 9] ^ register));
          register = rk[127 + 128 * 10 : 128 * 10] ^ register;
          
	        // Write data to output registers
          Ksubs3_Noc16_TxData_valid <= 1;
          Ksubs3_Noc16_TxData_lo <= register[63:0];
          Ksubs3_Noc16_TxData_cmd <= 8'hFF;
          
          proc_idx <= 18;
        end
        18: begin
          iv <= register;
          Ksubs3_Noc16_TxData_lo <= register[127:64];
          proc_idx <= 0;
        end
      endcase
    end
  end
endmodule

