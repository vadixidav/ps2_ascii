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
        casez (scan_code)
            default: begin
                valid = 1'b0;
                ascii_code = 8'b0;
            end
        endcase
    end
endmodule
