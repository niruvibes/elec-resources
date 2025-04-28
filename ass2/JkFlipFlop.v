`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 22:34:45
// Design Name: 
// Module Name: JkFlipFlop
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


module JkFlipFlop(
    input j, k,
    input clk, reset,
    output reg q, q_not
    );

always@(posedge clk, posedge reset) begin
    if (reset) begin
        q <= 1'b0;
    end else begin 
        case ({j,k})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
            default: q <= 1'b0;
        endcase
    end
end

always@* begin
    q_not = ~q;
end

endmodule
