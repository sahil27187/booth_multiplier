module tb;
    wire signed [15:0] z; // Product
    reg signed [7:0] a, b; // Multiplier and Multiplicand

    // Instantiate Booth Multiplier
    booth_multiplier uut (
        .multiplier(a),
        .multiplicand(b),
        .product(z)
    );

    initial begin
        $dumpfile("tb_booth_multiplier.vcd");
        $dumpvars(0, tb);

        // Monitor output in both decimal and hexadecimal
        $monitor($time, " a = %d (0x%h), b = %d (0x%h), z = %d (0x%h)", 
                 a, a, b, b, z, z);

        // Test cases
        a = 8'b00000001; b = 8'b00000001; #10;  // 1 * 1 = 1
        a = -8;          b = -16;         #10;  // -8 * -16 = 128
        a = -77;         b = -68;         #10;  // -77 * -68 = 5236
        a = 127;         b = 0;           #10;  // 127 * 0 = 0
        a = 124;         b = 5;           #10;  // 124 * 5 = 620
        a = -77;         b = 69;          #10;  // -77 * 69 = -5313
        a = 67;          b = -8;          #10;  // 67 * -8 = -536
        a = -52;         b = 1;           #10;  // -52 * 1 = -52

        $finish;
    end
endmodule
