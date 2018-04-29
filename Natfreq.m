
global M K 
syms lambda
P = -lambda*M + K ;
Pd = det(P);
Nat = sym2poly(Pd)
natfreq = roots(Nat)
