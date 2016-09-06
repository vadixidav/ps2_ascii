module scancode_ascii(
    scan_code,
    ascii_code
    );
    input [7:0] scan_code;
    output reg [7:0] ascii_code;

    always @* begin
        casez (scan_code)
            default: ascii_code = 8'b0;
        endcase
    end
endmodule
