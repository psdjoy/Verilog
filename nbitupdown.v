module nbitupdown(clk,count,resetn);
input clk,resetn;
output reg [3:0]count;
initial count = 0;
always@(posedge clk or negedge resetn)
begin
if(!resetn)
count=0;
else
count = count+1; 
end
endmodule

