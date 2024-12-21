`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/10 22:27:50
// Design Name: 
// Module Name: FND_Encoder
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


module FND_Encoder(
    input clk_in,
    input reset_n,
    input flag,
    output reg [7:0] seg_out,
    output reg [3:0] com_out
    );
    
    reg [19:0] cnt;
    reg com_cnt;
    wire [7:0] seg0;
    wire [7:0] seg1;
    
    ovf2seg ovf2seg_0(.flag(flag), .seg0_data(seg0), .seg1_data(seg1));
        
    always @(posedge clk_in, negedge reset_n) begin
        if (!reset_n) begin
            cnt <= 20'd0;
            com_cnt <= 1'd0;
        end
        else begin
            if (cnt < 65536)
                cnt <= cnt + 1;
            else begin
                cnt <= 0;
                com_cnt <= com_cnt + 1;
            end
        end
    end
    
    always @(*) begin
        case (com_cnt)
            1'd0: begin
                seg_out <= seg1;
                com_out <= 4'b1110; end // 0th FND select
            1'd1: begin
                seg_out <= seg0;
                com_out <= 4'b1101; end // 1st FND select
            default: begin
                seg_out <= 8'b11111100;
                com_out <= 4'b1111; end // FND Not select
        endcase
    end
    
endmodule
