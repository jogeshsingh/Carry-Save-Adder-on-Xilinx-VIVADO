`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2021 09:53:28 PM
// Design Name: 
// Module Name: Top_module
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


module Top_module
#(parameter Data_width = 4 ,
parameter Data_wire = 3 , 
parameter Data_out = 5 ) 
( a_i , b_i, c_i, d_i, Sum ,C_out 
    );
input [Data_width-1:0] a_i , b_i , c_i , d_i ;
output [Data_out-1:0] Sum ;
output  C_out ;

wire [Data_width-1:0] S1_i ,Co1_i ;
wire [Data_width-1:0]  Co2_i ;
wire [Data_wire-1:0] S2_i ;
Full_adder  FA5( a_i[0] ,b_i[0] , c_i[0] ,S1_i[0] , Co1_i[0] );
Full_adder  FA6( a_i[1] ,b_i[1] , c_i[1] ,S1_i[1] , Co1_i[1] );
Full_adder  FA7( a_i[2] ,b_i[2] , c_i[2] ,S1_i[2] , Co1_i[2] );
Full_adder  FA8( a_i[3] ,b_i[3] , c_i[3] ,S1_i[3] , Co1_i[3] );

Full_adder  FA9( d_i[0] ,S1_i[0] , 1'b0 , Sum[0] , Co2_i[0] );
Full_adder  FA10( d_i[1] ,S1_i[1] , Co1_i[0] ,S2_i[0] , Co2_i[1] );
Full_adder  FA11( d_i[2] ,S1_i[2] , Co1_i[1] ,S2_i[1] , Co2_i[2] );
Full_adder  FA12( d_i[3] ,S1_i[3] , Co1_i[2] ,S2_i[2] , Co2_i[3] );

 RCA  R1 ( .x(Co2_i[Data_width-1:0]) , .y({Co1_i[3],S2_i[2:0]} ) , .cin(1'b0) , .sum(Sum[4:1]) , .cout(C_out) ) ;




   
    
endmodule
