// Modelo de estructural  
module mux_4(s0,s1,p,r,h);
input logic s0,s1;

input logic p, r;

output logic h;

wire [0:3] l;

wire [0:0] l2; 

xor (l2[0],p,r);
 
and M0(l[0],l2[0],~s1,~s0);

and M1(l[1],p,~s0,s1);

and M2(l[2],r,s0,~s1);

or H(h,l[0],l[1],l[2]);

endmodule 