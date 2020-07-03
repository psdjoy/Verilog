module f1 (a,b,c,d,e,Y);
input a,b,c,d,e;
output Y;
wire z1,z2,z3,z4;
xnor Xnor1(z1,a,d);
and And1(z2,z1,b,c);
or Or1(z3,z2,d);
and And2(z4,z3,e);
buf Buf1(Y,z4);
endmodule
