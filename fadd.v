module fadd (
           a,      // I 1 bit : first input
           b,      // I 1 bit : Second input
           cin,    // I 1 bit : Carry input
           cout,   // O 1 bit : carry output
           sum     // O 1 bit : sum output
       );
input a, b, cin;
output cout, sum;

assign {cout, sum} = a + b + cin;   //addition
endmodule
