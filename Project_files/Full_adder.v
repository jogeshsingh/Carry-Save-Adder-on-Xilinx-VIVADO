`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2021 09:54:05 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
 x ,y , cin ,
 s , cout 
    );
input x ,y , cin ;
output s, cout ;
assign  s = x^y^cin ; 
assign cout =  x&y | cin&(x^y)  ;  
endmodule
