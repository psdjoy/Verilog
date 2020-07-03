module t_from_jk(t,clk,q);
input t,clk;
output q;
jk_a jk_01(t,t,clk,q);
endmodule

module jk_a(j,k,clk,q);
input j,k,clk;
output reg q;
initial
begin 
q = 0;
end
always@(posedge clk)
begin
case({j,k})
2'b00 : q<=q;
2'b01 : q<=0;
2'b10 : q<=1;
2'b11 : q<=~q;
endcase
end
endmodule
