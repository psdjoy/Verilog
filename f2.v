module f2(a,b,c,d,e,Y);
input a,b,c,d,e;
output Y;
wire z1,z2,z3,z4;
xnor (z1,a,d);
assign Y=(((z1 & b & c)|d)& e);
endmodule
