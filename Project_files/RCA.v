`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2021 09:54:31 PM
// Design Name: 
// Module Name: RCA
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

 
module RCA
#(parameter Data_width = 4 , 
parameter Data_out = 4 ) 
(x , 
y, 
cin , 
sum , 
cout ) ;

input [Data_width-1 :0] x , y ;
input cin ;
output [Data_out-1:0] sum  ;
output cout ;

wire c1 , c2, c3 ;

Full_adder  FA1( x[0] ,y[0] , cin ,sum[0] , c1 );
Full_adder  FA2( x[1] ,y[1] , c1 ,sum[1] , c2 );
Full_adder  FA3( x[2] ,y[2] , c2 ,sum[2] , c3 );   
Full_adder  FA4( x[3] ,y[3] , c3 ,sum[3] , cout); 
 
endmodule
