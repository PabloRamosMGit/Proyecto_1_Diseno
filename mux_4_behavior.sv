// Modelo comportamiento 
module mux_4_behavior(s0,s1,p,r,h);
input logic s0,s1,p,r;
output logic h;
assign h = (~s0 & ~s1 & (p^r)) | (~s0 & s1 & p) | (s0 & ~s1 & r);
endmodule
