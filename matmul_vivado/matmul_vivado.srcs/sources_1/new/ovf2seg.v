`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/10 22:38:26
// Design Name: 
// Module Name: ovf2seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ovf2seg(
    input flag,
    output reg [7:0] seg0_data,
    output reg [7:0] seg1_data
    );
    
    always @(*) begin
        if (flag == 1'b1) begin
            seg0_data = 8'b11111100; // O
            seg1_data = 8'b10001110; // F
        end
        else begin
            seg0_data <= 8'b00000000;
            seg1_data <= 8'b00000000;
        end
    end
            
endmodule
