`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 12:24:58
// Design Name: 
// Module Name: tb
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

module tb();
  reg [7:0]a,b;
  reg [3:0] select;
  reg cin;
  wire [7:0] out;
  wire carry,zero ;
  alu ins(.a(a),.b(b),.select( select) ,.cin(cin),.out(out),.carry(carry),.zero(zero) );
  initial begin $monitor("time=%0t,a=%d,b=%d,select=%d,cin=%b,out=%d,carry=%b,zero=%b",$time,a,b,select,cin,out,carry ,zero);
  end
  initial begin
    cin=1'b0;
    a=8'd156;
    b=8'd178;
  #5
    select=4'd0;#10
    select=4'd1; #10
    select=4'd2;#10
    select=4'd3;#10
     select=4'd4;#10
     select=4'd5;#10
     select=4'd6;#10
     select=4'd7;#10
     select=4'd8;#10
     select=4'd9;#10
     select=4'd10;#10
     select=4'd11;#10
a=8'd123;cin=1'b1;#1
    select=4'd0;#10
  select=4'd1; #10
    select=4'd2;#10
    select=4'd3;#10
     select=4'd4;#10
     select=4'd5;#10
    b=8'd233;#1
         select=4'd6;#10
     select=4'd7;#10
     select=4'd8;#10
     select=4'd9;#10
     select=4'd10;#10
     select=4'd11;#10
    $finish;
  end
endmodule
