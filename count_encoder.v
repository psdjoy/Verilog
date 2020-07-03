module count_encoder(clk,f);
input clk;
output reg [1:0]f;
reg [3:0]q;
always@(posedge clk)
begin
q<=q+1;
end
always@(q)

casex (q)
4'b1xxx : f=2'b11;
4'b01xx : f=2'b10;
4'b001x : f=2'b01;
4'b000x : f=2'b00;
endcase

endmodule
