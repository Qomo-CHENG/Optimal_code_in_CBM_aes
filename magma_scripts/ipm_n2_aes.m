/**
@ This is for (2, 1) - IPM scheme
@ We use the irreducible polynomial in AES
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

print "--------------------- Main program -----------------------";
print "--------------------- IPM with n=2 -----------------------";
n := 2;
for i:= 1 to 255 do
	print "i = ", i;    
    x_1 := Integer2Element(1);
    x_i := Integer2Element(i);
	H := Matrix(GF256, 1, n, [ x_i, x_1]); 
	D := LinearCode(H);  
	print "WD dual D (word): ", WeightDistribution(Dual(D)); 
	print "WD dual D  (bit): ", WeightDistribution(Dual(SubfieldRepresentationCode(D, GF(2))))[1..5];
end for;

exit;
