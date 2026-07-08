`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 10:24:05
// Design Name: 
// Module Name: seven_segment
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


module seven_seg_decoder(
    input  [3:0] bin,
    output reg [6:0] seg
);

always @(*) begin
    case(bin)
        4'h0: seg = 7'b1000000;
        4'h1: seg = 7'b1111001;
        4'h2: seg = 7'b0100100;
        4'h3: seg = 7'b0110000;
        4'h4: seg = 7'b0011001;
        4'h5: seg = 7'b0010010;
        4'h6: seg = 7'b0000010;
        4'h7: seg = 7'b1111000;
        4'h8: seg = 7'b0000000;
        4'h9: seg = 7'b0010000;
        4'hA: seg = 7'b0001000;
        4'hB: seg = 7'b0000011;
        4'hC: seg = 7'b1000110;
        4'hD: seg = 7'b0100001;
        4'hE: seg = 7'b0000110;
        4'hF: seg = 7'b0001110;
        default: seg = 7'b1111111;
    endcase
end

endmodule
module mux(input [15:0]in,input clk ,output reg [3:0]data,output reg [3:0] anode);
reg [16:0]refc=17'd0;
always@(posedge clk)begin
refc<=refc+1;
end 
always@(*)begin
case(refc[16:15])
2'b00:begin
anode=4'b1110;
data=in[3:0];
end
2'b01:begin
anode=4'b1101;
data=in[7:4];
end
2'b10:begin
anode=4'b1011;
data=in[11:8];
end
2'b11:begin
anode=4'b0111;
data=in[15:12];
end
default:begin
anode=4'b1110;
data=in[3:0];
end
endcase
end
endmodule

