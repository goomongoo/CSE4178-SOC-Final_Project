`timescale 1ns / 1ps

module matmul_tb;

    // Inputs
    reg [31:0] A_R0, A_R1, A_R2, A_R3;
    reg [31:0] B_R0, B_R1, B_R2, B_R3;

    // Outputs
    wire [31:0] C_R0L, C_R0R;
    wire [31:0] C_R1L, C_R1R;
    wire [31:0] C_R2L, C_R2R;
    wire [31:0] C_R3L, C_R3R;
    wire overflow;

    // Instantiate the Unit Under Test (UUT)
    matmul uut (
        .A_R0(A_R0), .A_R1(A_R1), .A_R2(A_R2), .A_R3(A_R3),
        .B_R0(B_R0), .B_R1(B_R1), .B_R2(B_R2), .B_R3(B_R3),
        .C_R0L(C_R0L), .C_R0R(C_R0R),
        .C_R1L(C_R1L), .C_R1R(C_R1R),
        .C_R2L(C_R2L), .C_R2R(C_R2R),
        .C_R3L(C_R3L), .C_R3R(C_R3R),
        .overflow(overflow)
    );

    initial begin
        // Test Case 1: Simple multiplication
        A_R0 = 32'h01020304; // {1, 2, 3, 4}
        A_R1 = 32'h05060708; // {5, 6, 7, 8}
        A_R2 = 32'h090A0B0C; // {9, 10, 11, 12}
        A_R3 = 32'h0D0E0F10; // {13, 14, 15, 16}

        B_R0 = 32'h01010101; // {1, 1, 1, 1}
        B_R1 = 32'h02020202; // {2, 2, 2, 2}
        B_R2 = 32'h03030303; // {3, 3, 3, 3}
        B_R3 = 32'h04040404; // {4, 4, 4, 4}

        #10; // Wait for results

        $display("C_R0L = %h, C_R0R = %h", C_R0L, C_R0R);
        $display("C_R1L = %h, C_R1R = %h", C_R1L, C_R1R);
        $display("C_R2L = %h, C_R2R = %h", C_R2L, C_R2R);
        $display("C_R3L = %h, C_R3R = %h", C_R3L, C_R3R);
        $display("Overflow = %b", overflow);

        // Test Case 2: Overflow detection
        A_R0 = 32'h7F7F7F7F; // Maximum 8-bit signed value (127)
        A_R1 = 32'h7F7F7F7F;
        A_R2 = 32'h7F7F7F7F;
        A_R3 = 32'h7F7F7F7F;

        B_R0 = 32'h7F7F7F7F;
        B_R1 = 32'h7F7F7F7F;
        B_R2 = 32'h7F7F7F7F;
        B_R3 = 32'h7F7F7F7F;

        #10; // Wait for results

        $display("C_R0L = %h, C_R0R = %h", C_R0L, C_R0R);
        $display("C_R1L = %h, C_R1R = %h", C_R1L, C_R1R);
        $display("C_R2L = %h, C_R2R = %h", C_R2L, C_R2R);
        $display("C_R3L = %h, C_R3R = %h", C_R3L, C_R3R);
        $display("Overflow = %b", overflow);

        $finish; // End simulation
    end

endmodule
