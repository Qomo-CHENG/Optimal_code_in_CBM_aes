/**
@ This is for (3, 1) - SSS scheme
@ Computing B'_d in SSS-based masking
@ Wei Cheng, 2021-12-01
**/

P<X>:=IrreduciblePolynomial(GF(2),8);
P<X>:= X^8 + X^4 + X^3 + X^1 + 1;  // AES
print "Irreducible Polynomial P<X> = ", P;
GF256<X> := ext<GF(2)|P>;

Element2Integer := function(e)
    local s, p, res;
    s := ElementToSequence(e);
    p := 1;
    res := 0;
    for si in s do
        if si eq 1 then
            res := res+p;
        end if;
        p :=2*p;    //bit by bit
    end for;
    return res;
end function;

Integer2Element := function( i )
    local p, res;
    p := 0;
    res :=0;
    for j in [0..7] do
        if (i mod 2) eq 1 then
            res := res + X^p;
        end if;
        p := p+1;
        i := Floor(i/2);
    end for;
    return res;
end function;

print "--------------------- (3, 1)-SSS -----------------------";

n := 3;
t := 1;
i := 51;
j := 54;
print "i, j = ", i, j;    
x_1 := Integer2Element(1);
x_i := Integer2Element(i);
x_j := Integer2Element(j);

C := LinearCode<GF256, 3|[x_1, x_1, x_1]>;
D := LinearCode<GF256, 3|[x_1, x_i, x_j]>;
						  
C_dual_b := Dual(SubfieldRepresentationCode(C, GF(2)));
D_dual_b := Dual(SubfieldRepresentationCode(D, GF(2)));
d_dual := MinimumWeight(D_dual_b);

X_s := [x: x in D_dual_b | (x notin C_dual_b) and (Weight(x) eq d_dual)];
B_d_p := [[x,y]: x in X_s, y in X_s | x+y in C_dual_b];

print "D_dual_b: ", D_dual_b;
print "Weight distribution: ", WeightDistribution(D_dual_b);
print "d_dual: ", d_dual; // dual distance of D
print "B'_d: ", #B_d_p; // Number of codewords satisfy all conditions
print "Codewords: ", B_d_p; // Output all combinations of (x, y)
