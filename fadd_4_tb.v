module fadd_4_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire cout;
wire [3:0] sum;



initial
begin

    $dumpfile("test.vcd");
    $dumpvars(0, s);

    $monitor("a = %b, b = %b cin = %b | cout = %b sum = %b ", a, b, cin, cout, sum);

    #10 a = 4'b0000;
    b   = 4'b0001;
    cin = 1'b0;

    #10 a = 4'b0010;
    b   = 4'b0011;
    cin = 1'b0;

    #10 a = 4'b0110;
    b   = 4'b0011;
    cin = 1'b1;

    #10 a = 4'b1010;
    b   = 4'b1101;
    cin = 1'b0;

    #10 a = 4'b1111;
    b   = 4'b1111;
    cin = 1'b1;


    #50 $finish;



    $finish;
end

fadd_4 s (
           .a(a),
           .b(b),
           .cin(cin),
           .cout(cout),
           .sum(sum)
       );
endmodule
