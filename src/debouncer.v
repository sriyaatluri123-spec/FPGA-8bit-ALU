`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 11:21:21
// Design Name: 
// Module Name: debouncer
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
module synchronizer(input clk,input async,output  reg sync);
reg ff1;
always@(posedge clk)begin
ff1<=async;
sync<=ff1;
end
endmodule

module debouncer(
input reset,input in,input clk,output reg out
    );
   reg [19:0]count;
   always@(posedge clk)begin
   if(reset)begin
   count<=20'd0;
   out<=1'b0;
   end
   else begin
   if(in==out)
   count<=20'd0;
   else begin
   count<=count+1;
   if(count==20'hfffff) begin
   out<=in;
   count<=20'd0;
   end
   end
   end
   end
endmodule
module one_pulse(input clk,input in,output reg out);
reg ff;
always@(posedge clk)begin
 out<=in&~ff;
ff<=in;
end

endmodule
