`include "half_adder.sv"
module full_adder(
    input  logic a_in,
    input  logic b_in,
    input  logic c_in,
    output logic sum_out,
    output logic carry_out
);

   // Declare the internal wires    
   logic w1, w2, w3;

   // Instantiate the Half-Adders using port mapping    
   half_adder HA1 (
       .a(a_in),
       .b(b_in),
       .sum(w1),
       .carry(w2)
   );

   half_adder HA2 (
       .a(w1),
       .b(c_in),
       .sum(sum_out),
       .carry(w3)
   );

   // Instantiate the OR gate
   assign carry_out = w3 | w2;

endmodule
