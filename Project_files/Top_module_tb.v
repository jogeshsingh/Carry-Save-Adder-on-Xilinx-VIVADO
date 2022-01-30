`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2021 09:54:55 PM
// Design Name: 
// Module Name: Top_module_tb
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

`define DELAY 5
`define data_width 4
`define Data_out 5 
module Top_module_tb( );
reg[`data_width-1:0] a_i  , b_i , c_i , d_i ;
wire [`Data_out-1:0] S_o ;
wire C_out ;


Top_module DUT ( a_i , b_i, c_i, d_i, S_o ,C_out );

integer i ;
initial 
  begin
  a_i = 4'b0000 ;
  b_i = 4'b0000 ;
  c_i = 4'b0000 ;
  d_i = 4'b0000 ;
  end
  
  initial
   begin
  for (i = 0 ; i<76; i = i+1 )
    begin
  a_i = $random() ;
  b_i = $random() ;
  c_i = $random() ;
  d_i = $random() ;
  #10 ;
  end
  end  
  
  
  
endmodule
