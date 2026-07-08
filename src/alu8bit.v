`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 12:23:49
// Design Name: 
// Module Name: alu8bit
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


// Code your design here
module alu(input [7:0]a,input [7:0]b,input [3:0] select ,input cin,output reg[7:0]out,output reg carry ,output reg zero);
always@(*) begin
 
    
    case(select)
      4'b0000:{carry,out}=a+b+cin;
      4'd1:{carry,out}=a+~(b)+1;
      4'd2:{carry,out}=a+1;
      4'd3:{carry,out}=a+8'hff;
      4'd4:begin out=a&b;carry=1'b0;end
      4'd5:begin out=a|b;carry=1'b0;end
      4'd6:begin out=a^b;carry=1'b0;end
      4'd7:begin out=~a;carry=1'b0;end
      4'd8:begin out=a<<b[2:0];carry=1'b0;end
      4'd9:begin out=a>>b[2:0];carry=1'b0;end
      4'd10:begin out=$signed(a)>>>b[2:0];carry=1'b0;end
      4'd11:begin out=($signed(a)<$signed(b))?8'd1:8'd0;carry=1'b0;end
        default :begin out=8'd0;carry=1'b0;end
    endcase
  zero=(out==8'd0)?1'b1:1'b0;
  
end
  
endmodule