module addern(x,y,cin,s,cout);
parameter n=4;
input [n-1:0]x,y;
input cin;
output [n-1:0]s;
output cout;
assign {cout,s}=x+y+cin;
endmodule
