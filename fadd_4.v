`include"fadd.v"

module fadd_4 (
           a,          // I 4 bit : first input
           b,          // I 4 bit : second input
           cin,        // O 1 bit : carry input
           cout,       // O 1 bit : Carry output of adder
           sum         // O 4 bit : Output of the adder
       );
input [3:0] a, b;
input cin;
output cout;
output [3:0] sum;

wire c0, c1, c2, cout;

wire [3:0] sum;

//explicit port connection
fadd fadd1 (
         .a(a[0]),
         .b(b[0]),
         .cin(cin),
         .cout(c0),
         .sum(sum[0])
     );
fadd fadd2 (
         .a(a[1]),
         .b(b[1]),
         .cin(c0),
         .cout(c1),
         .sum(sum[1])
     );
fadd fadd3 (
         .a(a[2]),
         .b(b[2]),
         .cin(c1),
         .cout(c2),
         .sum(sum[2])
     );
fadd fadd4 (
         .a(a[3]),
         .b(b[3]),
         .cin(c2),
         .cout(cout),
         .sum(sum[3])
     );
endmodule
