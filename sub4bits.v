module sub4bits(Sub, Cout, A, B, Cin);

    input [3:0] A, B; 
    input Cin; 
    output [3:0] Sub;
    output Cout;
    wire c1, c2, c3;

    // Instanciando o subtrator de 1 bit para cada bit
    subtratorcompleto s0 (.A(A[0]), .B(B[0]), .Cin(Cin),  .Sub(Sub[0]), .Cout(c1));
    subtratorcompleto s1 (.A(A[1]), .B(B[1]), .Cin(c1),   .Sub(Sub[1]), .Cout(c2));
    subtratorcompleto s2 (.A(A[2]), .B(B[2]), .Cin(c2),   .Sub(Sub[2]), .Cout(c3));
    subtratorcompleto s3 (.A(A[3]), .B(B[3]), .Cin(c3),   .Sub(Sub[3]), .Cout(Cout));

endmodule
