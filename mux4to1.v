module mux4to1(a,b,c,d,s,F);
input a,b,c,d;
input [1:0]s;
output F;
wire q1,q2;

mux_002to1 f1(a,b,s[0],q1);
mux_002to1 f2(c,d,s[0],q2);
mux_002to1 f3(q1,q2,s[1],F);

endmodule

module mux_002to1(x,y,z,f);
input x,y,z;
output reg f;

always@(x,y,z)
begin
case(z)
0 : f <= x;
1 : f <= y;
endcase
end
endmodule


