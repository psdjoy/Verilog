module practise2(t,clk,q,seg);
input t,clk;
input [2:0]q;
output [6:0]seg;
wire x1,x2,x3,x4;

tflipflop t_01(q[0],t,clk,x1);
tflipflop t_02(q[1],t,clk,x2);
tflipflop t_03(q[2],t,clk,x3);

decoder f1(x1,x2,x3,seg);
endmodule

module tflipflop(q1,t,clk1,q);
input t,clk1,q1;
output reg q;

 
always@(posedge clk1)
begin
case(t)
0: q<=q1;
1: q<=~q1;
endcase
end
endmodule

module decoder(x,y,z,out);
input x,y,z;
output reg [6:0]out;
always@(x,y,z)
begin
case({x,y,z})
3'b000: out=7'b0000000;
3'b001: out=7'b0000001;
3'b010: out=7'b0000010;
3'b011: out=7'b0000100;
3'b100: out=7'b0001000;
3'b101: out=7'b0010000;
3'b110: out=7'b0100000;
3'b111: out=7'b1000000;
endcase
end
endmodule






