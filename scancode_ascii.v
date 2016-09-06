module scancode_ascii(
    extended,
    scan_code,
    ascii_code,
    valid
    );
    input extended;
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
                    ascii_code = "A";
                end
                8'h32: begin
                    valid = 1'b1;
                    ascii_code = "B";
                end
                8'h21: begin
                    valid = 1'b1;
                    ascii_code = "C";
                end
                8'h23: begin
                    valid = 1'b1;
                    ascii_code = "D";
                end
                8'h24: begin
                    valid = 1'b1;
                    ascii_code = "E";
                end
                8'h2B: begin
                    valid = 1'b1;
                    ascii_code = "F";
                end
                8'h34: begin
                    valid = 1'b1;
                    ascii_code = "G";
                end
                8'h33: begin
                    valid = 1'b1;
                    ascii_code = "H";
                end
                8'h43: begin
                    valid = 1'b1;
                    ascii_code = "I";
                end
                8'h3B: begin
                    valid = 1'b1;
                    ascii_code = "J";
                end
                8'h42: begin
                    valid = 1'b1;
                    ascii_code = "K";
                end
                8'h4B: begin
                    valid = 1'b1;
                    ascii_code = "L";
                end
                8'h3A: begin
                    valid = 1'b1;
                    ascii_code = "M";
                end
                8'h31: begin
                    valid = 1'b1;
                    ascii_code = "N";
                end
                8'h44: begin
                    valid = 1'b1;
                    ascii_code = "O";
                end
                8'h4D: begin
                    valid = 1'b1;
                    ascii_code = "P";
                end
                8'h15: begin
                    valid = 1'b1;
                    ascii_code = "Q";
                end
                8'h2D: begin
                    valid = 1'b1;
                    ascii_code = "R";
                end
                8'h1B: begin
                    valid = 1'b1;
                    ascii_code = "S";
                end
                8'h2C: begin
                    valid = 1'b1;
                    ascii_code = "T";
                end
                8'h3C: begin
                    valid = 1'b1;
                    ascii_code = "U";
                end
                8'h2A: begin
                    valid = 1'b1;
                    ascii_code = "V";
                end
                8'h1D: begin
                    valid = 1'b1;
                    ascii_code = "W";
                end
                8'h22: begin
                    valid = 1'b1;
                    ascii_code = "X";
                end
                8'h35: begin
                    valid = 1'b1;
                    ascii_code = "Y";
                end
                8'h1A: begin
                    valid = 1'b1;
                    ascii_code = "Z";
                end
                default: begin
                    valid = 1'b0;
                    ascii_code = 8'b0;
                end
            endcase
        end
    end
endmodule
