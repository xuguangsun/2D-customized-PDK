`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/18 08:25:50
// Design Name: 
// Module Name: adder_1bit_CLK
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


module adder_4bit(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output[3:0]s,
  output cout
    );
 
  assign {cout,s}=a+b+cin;
endmodule
