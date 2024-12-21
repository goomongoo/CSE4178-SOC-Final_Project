`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/10 12:33:46
// Design Name: Matrix Multiplication Module
// Module Name: matmul
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  This module performs 4x4 matrix multiplication for two input matrices, A and B,
//  and outputs the resulting matrix C in a flattened format. Each element of the 
//  input matrices is represented as an 8-bit signed value, and the output matrix 
//  elements are represented as 16-bit signed values.
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module matmul(
    input wire [31:0] A_R0, // Row 0 of matrix A (4 elements, each 8 bits)
    input wire [31:0] A_R1, // Row 1 of matrix A (4 elements, each 8 bits)
    input wire [31:0] A_R2, // Row 2 of matrix A (4 elements, each 8 bits)
    input wire [31:0] A_R3, // Row 3 of matrix A (4 elements, each 8 bits)
    input wire [31:0] B_R0, // Row 0 of matrix B (4 elements, each 8 bits)
    input wire [31:0] B_R1, // Row 1 of matrix B (4 elements, each 8 bits)
    input wire [31:0] B_R2, // Row 2 of matrix B (4 elements, each 8 bits)
    input wire [31:0] B_R3, // Row 3 of matrix B (4 elements, each 8 bits)
    output wire [31:0] C_R0L, // Left half of row 0 of the result matrix C
    output wire [31:0] C_R0R, // Right half of row 0 of the result matrix C
    output wire [31:0] C_R1L, // Left half of row 1 of the result matrix C
    output wire [31:0] C_R1R, // Right half of row 1 of the result matrix C
    output wire [31:0] C_R2L, // Left half of row 2 of the result matrix C
    output wire [31:0] C_R2R, // Right half of row 2 of the result matrix C
    output wire [31:0] C_R3L, // Left half ot row 3 of the result matrix C
    output wire [31:0] C_R3R, // Right half of row 3 of the result matrix C
    output wire overflow
    );

    // Intermediate 4x4 matrix to hold input values of A (each element is 8-bit signed)
    wire signed [7:0] matA [3:0][3:0];
    // Intermediate 4x4 matrix to hold input values of B (each element is 8-bit signed)
    wire signed [7:0] matB [3:0][3:0];
    // Intermediate 4x4 matrix to hold output values of C (each element is 16-bit signed)
    wire signed [16:0] matC [3:0][3:0];
    
    genvar i, j; // Variables for generate loops

    // Unflatten input matrices A and B from 32-bit vectors to 4x4 matrices
    generate
        for (j = 0; j < 4; j = j + 1) begin
            assign matA[0][j] = A_R0[(j * 8) +: 8]; // Extract 8-bit element from row 0 of A
            assign matB[0][j] = B_R0[(j * 8) +: 8]; // Extract 8-bit element from row 0 of B
            assign matA[1][j] = A_R1[(j * 8) +: 8]; // Extract 8-bit element from row 1 of A
            assign matB[1][j] = B_R1[(j * 8) +: 8]; // Extract 8-bit element from row 1 of B
            assign matA[2][j] = A_R2[(j * 8) +: 8]; // Extract 8-bit element from row 2 of A
            assign matB[2][j] = B_R2[(j * 8) +: 8]; // Extract 8-bit element from row 2 of B
            assign matA[3][j] = A_R3[(j * 8) +: 8]; // Extract 8-bit element from row 3 of A
            assign matB[3][j] = B_R3[(j * 8) +: 8]; // Extract 8-bit element from row 3 of B
        end
    endgenerate
    
    // Perform 4x4 matrix multiplication: matC = matA * matB
    generate
        for (i = 0; i < 4; i = i + 1) begin // Iterate over rows of matA
            for (j = 0; j < 4; j = j + 1) begin // Iterate over columns of matB
                wire signed [15:0] sum; // Temporary variable to hold sum of products
                assign sum = matA[i][0] * matB[0][j] + // Multiply row of A with column of B
                             matA[i][1] * matB[1][j] +
                             matA[i][2] * matB[2][j] +
                             matA[i][3] * matB[3][j];
                assign matC[i][j] = sum; // Store the result in matC
            end
        end
    endgenerate
    
    // Overflow flag (Reduction OR)
    assign overflow = |{matC[0][0][16], matC[0][1][16], matC[0][2][16], matC[0][3][16],
                       matC[1][0][16], matC[1][1][16], matC[1][2][16], matC[1][3][16],
                       matC[2][0][16], matC[2][1][16], matC[2][2][16], matC[2][3][16],
                       matC[3][0][16], matC[3][1][16], matC[3][2][16], matC[3][3][16]};

    
    // Flatten the result matrix C into 32-bit output wires
    assign C_R0L = {matC[0][0][15:0], matC[0][1][15:0]}; // Combine row 0, column 0 and 1
    assign C_R0R = {matC[0][2][15:0], matC[0][3][15:0]}; // Combine row 0, column 2 and 3
    assign C_R1L = {matC[1][0][15:0], matC[1][1][15:0]}; // Combine row 1, column 0 and 1
    assign C_R1R = {matC[1][2][15:0], matC[1][3][15:0]}; // Combine row 1, column 2 and 3
    assign C_R2L = {matC[2][0][15:0], matC[2][1][15:0]}; // Combine row 2, column 0 and 1
    assign C_R2R = {matC[2][2][15:0], matC[2][3][15:0]}; // Combine row 2, column 2 and 3
    assign C_R3L = {matC[3][0][15:0], matC[3][1][15:0]}; // Combine row 3, column 0 and 1
    assign C_R3R = {matC[3][2][15:0], matC[3][3][15:0]}; // Combine row 3, column 2 and 3
    
endmodule
