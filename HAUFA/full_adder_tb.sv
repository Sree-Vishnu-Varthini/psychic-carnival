`include "full_adder.sv"
`include "half_adder.sv"

module full_adder_tb;
  
   reg   a, b, cin;
   wire  sum, carry;

   // Instantiate the full adder using ordered port mapping
   full_adder DUT (
      .a_in(a),
      .b_in(b),
      .c_in(cin),
      .sum_out(sum),
      .carry_out(carry)
   );
  
   // Initialize the inputs
   initial begin
      a   = 1'b0;
      b   = 1'b0;
      cin = 1'b0;
   end
    
   // Generate all possible combinations of a, b, and cin
   initial begin 
      for (int i = 0; i < 8; i++) begin
         {a, b, cin} = i;
         #10;
      end
   end
    
   // Monitor the changes in the variables
   initial 
      $monitor("Input a=%b, b=%b, cin=%b, Output sum=%b, carry=%b", a, b, cin, sum, carry);
         
   // Terminate simulation after 100ns
   initial #1000 $finish;

endmodule
  
