
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

  function[7:0] SubByte(input[7:0] in);
    begin
      case (in)
        8'h00: SubByte = 8'h63; 8'h10: SubByte = 8'hca; 8'h20: SubByte = 8'hb7; 8'h30: SubByte = 8'h04;
        8'h01: SubByte = 8'h7c; 8'h11: SubByte = 8'h82; 8'h21: SubByte = 8'hfd; 8'h31: SubByte = 8'hc7;
        8'h02: SubByte = 8'h77; 8'h12: SubByte = 8'hc9; 8'h22: SubByte = 8'h93; 8'h32: SubByte = 8'h23;
        8'h03: SubByte = 8'h7b; 8'h13: SubByte = 8'h7d; 8'h23: SubByte = 8'h26; 8'h33: SubByte = 8'hc3;
        8'h04: SubByte = 8'hf2; 8'h14: SubByte = 8'hfa; 8'h24: SubByte = 8'h36; 8'h34: SubByte = 8'h18;
        8'h05: SubByte = 8'h6b; 8'h15: SubByte = 8'h59; 8'h25: SubByte = 8'h3f; 8'h35: SubByte = 8'h96;
        8'h06: SubByte = 8'h6f; 8'h16: SubByte = 8'h47; 8'h26: SubByte = 8'hf7; 8'h36: SubByte = 8'h05;
        8'h07: SubByte = 8'hc5; 8'h17: SubByte = 8'hf0; 8'h27: SubByte = 8'hcc; 8'h37: SubByte = 8'h9a;
        8'h08: SubByte = 8'h30; 8'h18: SubByte = 8'had; 8'h28: SubByte = 8'h34; 8'h38: SubByte = 8'h07;
        8'h09: SubByte = 8'h01; 8'h19: SubByte = 8'hd4; 8'h29: SubByte = 8'ha5; 8'h39: SubByte = 8'h12;
        8'h0a: SubByte = 8'h67; 8'h1a: SubByte = 8'ha2; 8'h2a: SubByte = 8'he5; 8'h3a: SubByte = 8'h80;
        8'h0b: SubByte = 8'h2b; 8'h1b: SubByte = 8'haf; 8'h2b: SubByte = 8'hf1; 8'h3b: SubByte = 8'he2;
        8'h0c: SubByte = 8'hfe; 8'h1c: SubByte = 8'h9c; 8'h2c: SubByte = 8'h71; 8'h3c: SubByte = 8'heb;
        8'h0d: SubByte = 8'hd7; 8'h1d: SubByte = 8'ha4; 8'h2d: SubByte = 8'hd8; 8'h3d: SubByte = 8'h27;
        8'h0e: SubByte = 8'hab; 8'h1e: SubByte = 8'h72; 8'h2e: SubByte = 8'h31; 8'h3e: SubByte = 8'hb2;
        8'h0f: SubByte = 8'h76; 8'h1f: SubByte = 8'hc0; 8'h2f: SubByte = 8'h15; 8'h3f: SubByte = 8'h75;

        8'h40: SubByte = 8'h09; 8'h50: SubByte = 8'h53; 8'h60: SubByte = 8'hd0; 8'h70: SubByte = 8'h51;
        8'h41: SubByte = 8'h83; 8'h51: SubByte = 8'hd1; 8'h61: SubByte = 8'hef; 8'h71: SubByte = 8'ha3;
        8'h42: SubByte = 8'h2c; 8'h52: SubByte = 8'h00; 8'h62: SubByte = 8'haa; 8'h72: SubByte = 8'h40;
        8'h43: SubByte = 8'h1a; 8'h53: SubByte = 8'hed; 8'h63: SubByte = 8'hfb; 8'h73: SubByte = 8'h8f;
        8'h44: SubByte = 8'h1b; 8'h54: SubByte = 8'h20; 8'h64: SubByte = 8'h43; 8'h74: SubByte = 8'h92;
        8'h45: SubByte = 8'h6e; 8'h55: SubByte = 8'hfc; 8'h65: SubByte = 8'h4d; 8'h75: SubByte = 8'h9d;
        8'h46: SubByte = 8'h5a; 8'h56: SubByte = 8'hb1; 8'h66: SubByte = 8'h33; 8'h76: SubByte = 8'h38;
        8'h47: SubByte = 8'ha0; 8'h57: SubByte = 8'h5b; 8'h67: SubByte = 8'h85; 8'h77: SubByte = 8'hf5;
        8'h48: SubByte = 8'h52; 8'h58: SubByte = 8'h6a; 8'h68: SubByte = 8'h45; 8'h78: SubByte = 8'hbc;
        8'h49: SubByte = 8'h3b; 8'h59: SubByte = 8'hcb; 8'h69: SubByte = 8'hf9; 8'h79: SubByte = 8'hb6;
        8'h4a: SubByte = 8'hd6; 8'h5a: SubByte = 8'hbe; 8'h6a: SubByte = 8'h02; 8'h7a: SubByte = 8'hda;
        8'h4b: SubByte = 8'hb3; 8'h5b: SubByte = 8'h39; 8'h6b: SubByte = 8'h7f; 8'h7b: SubByte = 8'h21;
        8'h4c: SubByte = 8'h29; 8'h5c: SubByte = 8'h4a; 8'h6c: SubByte = 8'h50; 8'h7c: SubByte = 8'h10;
        8'h4d: SubByte = 8'he3; 8'h5d: SubByte = 8'h4c; 8'h6d: SubByte = 8'h3c; 8'h7d: SubByte = 8'hff;
        8'h4e: SubByte = 8'h2f; 8'h5e: SubByte = 8'h58; 8'h6e: SubByte = 8'h9f; 8'h7e: SubByte = 8'hf3;
        8'h4f: SubByte = 8'h84; 8'h5f: SubByte = 8'hcf; 8'h6f: SubByte = 8'ha8; 8'h7f: SubByte = 8'hd2;

        8'h80: SubByte = 8'hcd; 8'h90: SubByte = 8'h60; 8'ha0: SubByte = 8'he0; 8'hb0: SubByte = 8'he7;
        8'h81: SubByte = 8'h0c; 8'h91: SubByte = 8'h81; 8'ha1: SubByte = 8'h32; 8'hb1: SubByte = 8'hc8;
        8'h82: SubByte = 8'h13; 8'h92: SubByte = 8'h4f; 8'ha2: SubByte = 8'h3a; 8'hb2: SubByte = 8'h37;
        8'h83: SubByte = 8'hec; 8'h93: SubByte = 8'hdc; 8'ha3: SubByte = 8'h0a; 8'hb3: SubByte = 8'h6d;
        8'h84: SubByte = 8'h5f; 8'h94: SubByte = 8'h22; 8'ha4: SubByte = 8'h49; 8'hb4: SubByte = 8'h8d;
        8'h85: SubByte = 8'h97; 8'h95: SubByte = 8'h2a; 8'ha5: SubByte = 8'h06; 8'hb5: SubByte = 8'hd5;
        8'h86: SubByte = 8'h44; 8'h96: SubByte = 8'h90; 8'ha6: SubByte = 8'h24; 8'hb6: SubByte = 8'h4e;
        8'h87: SubByte = 8'h17; 8'h97: SubByte = 8'h88; 8'ha7: SubByte = 8'h5c; 8'hb7: SubByte = 8'ha9;
        8'h88: SubByte = 8'hc4; 8'h98: SubByte = 8'h46; 8'ha8: SubByte = 8'hc2; 8'hb8: SubByte = 8'h6c;
        8'h89: SubByte = 8'ha7; 8'h99: SubByte = 8'hee; 8'ha9: SubByte = 8'hd3; 8'hb9: SubByte = 8'h56;
        8'h8a: SubByte = 8'h7e; 8'h9a: SubByte = 8'hb8; 8'haa: SubByte = 8'hac; 8'hba: SubByte = 8'hf4;
        8'h8b: SubByte = 8'h3d; 8'h9b: SubByte = 8'h14; 8'hab: SubByte = 8'h62; 8'hbb: SubByte = 8'hea;
        8'h8c: SubByte = 8'h64; 8'h9c: SubByte = 8'hde; 8'hac: SubByte = 8'h91; 8'hbc: SubByte = 8'h65;
        8'h8d: SubByte = 8'h5d; 8'h9d: SubByte = 8'h5e; 8'had: SubByte = 8'h95; 8'hbd: SubByte = 8'h7a;
        8'h8e: SubByte = 8'h19; 8'h9e: SubByte = 8'h0b; 8'hae: SubByte = 8'he4; 8'hbe: SubByte = 8'hae;
        8'h8f: SubByte = 8'h73; 8'h9f: SubByte = 8'hdb; 8'haf: SubByte = 8'h79; 8'hbf: SubByte = 8'h08;

        8'hc0: SubByte = 8'hba; 8'hd0: SubByte = 8'h70; 8'he0: SubByte = 8'he1; 8'hf0: SubByte = 8'h8c;
        8'hc1: SubByte = 8'h78; 8'hd1: SubByte = 8'h3e; 8'he1: SubByte = 8'hf8; 8'hf1: SubByte = 8'ha1;
        8'hc2: SubByte = 8'h25; 8'hd2: SubByte = 8'hb5; 8'he2: SubByte = 8'h98; 8'hf2: SubByte = 8'h89;
        8'hc3: SubByte = 8'h2e; 8'hd3: SubByte = 8'h66; 8'he3: SubByte = 8'h11; 8'hf3: SubByte = 8'h0d;
        8'hc4: SubByte = 8'h1c; 8'hd4: SubByte = 8'h48; 8'he4: SubByte = 8'h69; 8'hf4: SubByte = 8'hbf;
        8'hc5: SubByte = 8'ha6; 8'hd5: SubByte = 8'h03; 8'he5: SubByte = 8'hd9; 8'hf5: SubByte = 8'he6;
        8'hc6: SubByte = 8'hb4; 8'hd6: SubByte = 8'hf6; 8'he6: SubByte = 8'h8e; 8'hf6: SubByte = 8'h42;
        8'hc7: SubByte = 8'hc6; 8'hd7: SubByte = 8'h0e; 8'he7: SubByte = 8'h94; 8'hf7: SubByte = 8'h68;
        8'hc8: SubByte = 8'he8; 8'hd8: SubByte = 8'h61; 8'he8: SubByte = 8'h9b; 8'hf8: SubByte = 8'h41;
        8'hc9: SubByte = 8'hdd; 8'hd9: SubByte = 8'h35; 8'he9: SubByte = 8'h1e; 8'hf9: SubByte = 8'h99;
        8'hca: SubByte = 8'h74; 8'hda: SubByte = 8'h57; 8'hea: SubByte = 8'h87; 8'hfa: SubByte = 8'h2d;
        8'hcb: SubByte = 8'h1f; 8'hdb: SubByte = 8'hb9; 8'heb: SubByte = 8'he9; 8'hfb: SubByte = 8'h0f;
        8'hcc: SubByte = 8'h4b; 8'hdc: SubByte = 8'h86; 8'hec: SubByte = 8'hce; 8'hfc: SubByte = 8'hb0;
        8'hcd: SubByte = 8'hbd; 8'hdd: SubByte = 8'hc1; 8'hed: SubByte = 8'h55; 8'hfd: SubByte = 8'h54;
        8'hce: SubByte = 8'h8b; 8'hde: SubByte = 8'h1d; 8'hee: SubByte = 8'h28; 8'hfe: SubByte = 8'hbb;
        8'hcf: SubByte = 8'h8a; 8'hdf: SubByte = 8'h9e; 8'hef: SubByte = 8'hdf; 8'hff: SubByte = 8'h16;
      endcase
    end
  endfunction

  function [127:0] SubBytes(input[127:0] in);
    begin
      SubBytes = {
        SubByte(in[7 + 8 * 15 : 8 * 15]),
        SubByte(in[7 + 8 * 14 : 8 * 14]),
        SubByte(in[7 + 8 * 13 : 8 * 13]),
        SubByte(in[7 + 8 * 12 : 8 * 12]),
        SubByte(in[7 + 8 * 11 : 8 * 11]),
        SubByte(in[7 + 8 * 10 : 8 * 10]),
        SubByte(in[7 + 8 *  9 : 8 *  9]),
        SubByte(in[7 + 8 *  8 : 8 *  8]),
        SubByte(in[7 + 8 *  7 : 8 *  7]),
        SubByte(in[7 + 8 *  6 : 8 *  6]),
        SubByte(in[7 + 8 *  5 : 8 *  5]),
        SubByte(in[7 + 8 *  4 : 8 *  4]),
        SubByte(in[7 + 8 *  3 : 8 *  3]),
        SubByte(in[7 + 8 *  2 : 8 *  2]),
        SubByte(in[7 + 8 *  1 : 8 *  1]),
        SubByte(in[7 + 8 *  0 : 8 *  0])
      };
    end
  endfunction

  function [127:0] ShiftRows(input[127:0] in);
    reg [31 : 0] w0, w1, w2, w3;
    begin
      w3 = in[127 : 096];
      w2 = in[095 : 064];
      w1 = in[063 : 032];
      w0 = in[031 : 000];
      
      ShiftRows = {
        {w2[31 : 24], w1[23 : 16], w0[15 : 08], w3[07 : 00]},
        {w1[31 : 24], w0[23 : 16], w3[15 : 08], w2[07 : 00]},
        {w0[31 : 24], w3[23 : 16], w2[15 : 08], w1[07 : 00]},
        {w3[31 : 24], w2[23 : 16], w1[15 : 08], w0[07 : 00]}
      };
    end;
  endfunction

  function [7 : 0] xtime(input [7 : 0] op);
    begin
      xtime = {op[6 : 0], 1'b0} ^ (8'h1b & {8{op[7]}});
    end
  endfunction 
  
  function [31 : 0] mixw(input [31 : 0] w);
    reg [7 : 0] b0, b1, b2, b3, tmp;
    begin
      b3 = w[31 : 24];
      b2 = w[23 : 16];
      b1 = w[15 : 08];
      b0 = w[07 : 00];

      tmp = b0 ^ b1 ^ b2 ^ b3;
      
      mixw = {
        xtime(b3 ^ b0) ^ b3 ^ tmp,
        xtime(b2 ^ b3) ^ b2 ^ tmp,
        xtime(b1 ^ b2) ^ b1 ^ tmp,
        xtime(b0 ^ b1) ^ b0 ^ tmp
      };
    end
  endfunction

  function [127:0] MixCols(input[127:0] in);
    reg [31 : 0] w0, w1, w2, w3;
    begin
      w3 = in[127 : 096];
      w2 = in[095 : 064];
      w1 = in[063 : 032];
      w0 = in[031 : 000];
      
      MixCols = {mixw(w3), mixw(w2), mixw(w1), mixw(w0)};
    end
  endfunction

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
            // Set the 11 chunks of the round key.
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
            // Set the 2 chunks of the IV.
            case (iv_idx)
              0: begin iv[ 63: 0] <= Ksubs3_Noc16_RxData_lo; iv_idx <= 1; end
              1: begin iv[127:64] <= Ksubs3_Noc16_RxData_lo; iv_idx <= 0; end
            endcase
          end
          8'd2: begin
            // Read chunks of input and buffer them.
            case (in_idx)
              0: begin
                buf_in <= { 64'd0, Ksubs3_Noc16_RxData_lo };
                in_idx <= 1;
              end
              1: begin
                buf_in <= { Ksubs3_Noc16_RxData_lo, buf_in[63:0] };
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
            register <= MixCols(ShiftRows(SubBytes(iv ^ rk[127 + 128 * 0 : 128 * 0] ^ buf_in)));
            in_idx <= 0;
            proc_idx <= 1;
          end
        end
        1: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 1 : 128 * 1] ^ register)));
          proc_idx <= 2;
        end
        2: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 2 : 128 * 2] ^ register)));
          proc_idx <= 3;
        end
        3: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 3 : 128 * 3] ^ register)));
          proc_idx <= 4;
        end
        4: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 4 : 128 * 4] ^ register)));
          proc_idx <= 5;
        end
        5: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 5 : 128 * 5] ^ register)));
          proc_idx <= 6;
        end
        6: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 6 : 128 * 6] ^ register)));
          proc_idx <= 7;
        end
        7: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 7 : 128 * 7] ^ register)));
          proc_idx <= 8;
        end
        8: begin
          register <= MixCols(ShiftRows(SubBytes(rk[127 + 128 * 8 : 128 * 8] ^ register)));
          proc_idx <= 9;
        end
        9: begin
          register = ShiftRows(SubBytes(rk[127 + 128 * 9 : 128 * 9] ^ register));
          register = rk[127 + 128 * 10 : 128 * 10] ^ register;
          
          Ksubs3_Noc16_TxData_valid <= 1;
          Ksubs3_Noc16_TxData_lo <= register[63:0];
          Ksubs3_Noc16_TxData_cmd <= 8'hFF;
          
          proc_idx <= 10;
        end
        11: begin
          iv <= register;
          Ksubs3_Noc16_TxData_lo <= register[127:64];
          proc_idx <= 0;
        end
      endcase
    end
  end
endmodule

