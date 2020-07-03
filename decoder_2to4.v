module decoder24(w,en,y);
input [1:0]w;
input en;
output reg [0:3]y;
integer k;
always@ (w,en)
for(k=0;k<=3;k=k+1)
if((w==k)&&(en==1))
y[k]=1;
else
y[k]=0;
endmodule
