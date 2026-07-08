`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 16:59:32
// Design Name: 
// Module Name: top
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


module top(
input [15:0]sw,input bt0,input bt1,input bt2,input bt3,input clk,output [15:0]led,output [6:0]ss,output [3:0]anode
    );
    reg [7:0]A,B;
    reg [3:0] select;
    wire synca,dba,pulsea;
    wire syncb,dbb,pulseb;
    wire syncsel,dbsel,pulsesel;
    wire syncr,dbr,pulser;
    wire carry,zero,cin;
    wire[7:0]result;
    wire [15:0]display;
    wire [3:0]muxdata;
    synchronizer ins1(.clk(clk),.async(bt0),.sync(synca));
    synchronizer ins2(.clk(clk),.async(bt1),.sync(syncb));
    synchronizer ins3(.clk(clk),.async(bt2),.sync(syncsel));
    synchronizer ins4(.clk(clk),.async(bt3),.sync(syncr));
    debouncer ins11(.reset(1'b0),.clk(clk),.in(synca),.out(dba));
    debouncer ins12(.reset(1'b0),.clk(clk),.in(syncb),.out(dbb));
    debouncer ins13(.reset(1'b0),.clk(clk),.in(syncsel),.out(dbsel));
    debouncer ins14(.reset(1'b0),.clk(clk),.in(syncr),.out(dbr));
    one_pulse ins5(.clk(clk),.in(dba),.out(pulsea));
    one_pulse ins6(.clk(clk),.in(dbb),.out(pulseb));
    one_pulse ins7(.clk(clk),.in(dbsel),.out(pulsesel));
    one_pulse ins8(.clk(clk),.in(dbr),.out(pulser));
    always@(posedge clk)begin
        if(pulser)begin
    A<=0;
    B<=0;
    select<=0;
    end
    else begin
    if(pulsea)
    A<=sw[7:0];
    if(pulseb)
    B<=sw[7:0];
    if(pulsesel)
    select<=sw[12:9];
    end
    end
    assign cin=sw[8];
    alu ins111(.a(A),.b(B),.select(select),.cin(cin),.zero(zero),.carry(carry),.out(result));
    assign led[15]=zero;
    assign led[14]=carry;
    assign led[13:8]=6'b0;
    assign led[7:0]=result;
    assign display={8'b0,result};
    mux ins323(.in(display),.clk(clk),.data(muxdata),.anode(anode));
    seven_seg_decoder ins456(.bin(muxdata),.seg(ss));
endmodule
