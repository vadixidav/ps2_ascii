module scancode_ascii(
    extended,
    shift_mode,
    scan_code,
    ascii_code,
    valid
    );
    input extended, shift_mode;
    input [7:0] scan_code;
    output reg [7:0] ascii_code;
    output reg valid;

    always @* begin
        if (extended) begin
            case (scan_code)
                default: begin
                    valid = 1'b0;
                    ascii_code = 8'b0;
                end
            endcase
        end else begin
            case (scan_code)
                8'h1C: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "A" : "a";
                end
                8'h32: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "B" : "b";
                end
                8'h21: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "C" : "c";
                end
                8'h23: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "D" : "d";
                end
                8'h24: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "E" : "e";
                end
                8'h2B: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "F" : "f";
                end
                8'h34: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "G" : "g";
                end
                8'h33: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "H" : "h";
                end
                8'h43: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "I" : "i";
                end
                8'h3B: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "J" : "j";
                end
                8'h42: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "K" : "k";
                end
                8'h4B: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "L" : "l";
                end
                8'h3A: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "M" : "m";
                end
                8'h31: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "N" : "n";
                end
                8'h44: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "O" : "o";
                end
                8'h4D: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "P" : "p";
                end
                8'h15: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "Q" : "q";
                end
                8'h2D: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "R" : "r";
                end
                8'h1B: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "S" : "s";
                end
                8'h2C: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "T" : "t";
                end
                8'h3C: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "U" : "u";
                end
                8'h2A: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "V" : "v";
                end
                8'h1D: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "W" : "w";
                end
                8'h22: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "X" : "x";
                end
                8'h35: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "Y" : "y";
                end
                8'h1A: begin
                    valid = 1'b1;
                    ascii_code = shift_mode ? "Z" : "z";
                end
                8'h45: begin
                    valid = 1'b1;
                    ascii_code = "0";
                end
                8'h16: begin
                    valid = 1'b1;
                    ascii_code = "1";
                end
                8'h1E: begin
                    valid = 1'b1;
                    ascii_code = "2";
                end
                8'h26: begin
                    valid = 1'b1;
                    ascii_code = "3";
                end
                8'h25: begin
                    valid = 1'b1;
                    ascii_code = "4";
                end
                8'h2E: begin
                    valid = 1'b1;
                    ascii_code = "5";
                end
                8'h36: begin
                    valid = 1'b1;
                    ascii_code = "6";
                end
                8'h3D: begin
                    valid = 1'b1;
                    ascii_code = "7";
                end
                8'h3E: begin
                    valid = 1'b1;
                    ascii_code = "8";
                end
                8'h46: begin
                    valid = 1'b1;
                    ascii_code = "9";
                end
                8'h0E: begin
                    valid = 1'b1;
                    ascii_code = "`";
                end
                8'h4E: begin
                    valid = 1'b1;
                    ascii_code = "-";
                end
                8'h55: begin
                    valid = 1'b1;
                    ascii_code = "=";
                end
                8'h5D: begin
                    valid = 1'b1;
                    ascii_code = "\\";
                end
                8'h66: begin
                    valid = 1'b1;
                    ascii_code = "\b";
                end
                8'h29: begin
                    valid = 1'b1;
                    ascii_code = " ";
                end
                8'h0D: begin
                    valid = 1'b1;
                    ascii_code = "\t";
                end
                default: begin
                    valid = 1'b0;
                    ascii_code = 8'b0;
                end
            endcase
        end
    end
endmodule
