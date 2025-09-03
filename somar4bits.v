module somar4bits(Soma, Cout, A, B, Cin);

    input [3:0] A, B; 
    input Cin; 
    output [3:0] Soma;
    output Cout;
    wire c1, c2, c3;

    // Instanciando o somador de 1 bit para cada bit
    somadorcompleto s0 (.A(A[0]), .B(B[0]), .Cin(Cin),  .Soma(Soma[0]), .Cout(c1));
    somadorcompleto s1 (.A(A[1]), .B(B[1]), .Cin(c1),   .Soma(Soma[1]), .Cout(c2));
    somadorcompleto s2 (.A(A[2]), .B(B[2]), .Cin(c2),   .Soma(Soma[2]), .Cout(c3));
    somadorcompleto s3 (.A(A[3]), .B(B[3]), .Cin(c3),   .Soma(Soma[3]), .Cout(Cout));

endmodule
