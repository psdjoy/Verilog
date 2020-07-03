module practise1(t,clk,q);
input t,clk;
output reg q;

always@(posedge clk)
begin
q<= ~q & t|q & ~t;
end
endmodule
 