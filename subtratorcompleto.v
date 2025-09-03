module subtratorcompleto(Sub, Cout, A, B, Cin);

    input A, B, Cin;
    output Sub, Cout;
    wire T1, T2, T3, T4, nA;

    xor Xor0(T1, A, B);
    xor Xor1(Sub, T1, Cin);

    not Not0(nA, A);

    and And0(T2, nA, B);
    and And1(T3, nA, Cin);
    and And2(T4, B, Cin);

    or Or0(Cout, T2, T3, T4);
    
endmodule
