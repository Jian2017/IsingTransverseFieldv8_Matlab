function Mt=fermionfermionPlusMinusCorrelation(t,phi,psi,E)

P=expm(1i*2*E*t);

L=size(E,1);
one=eye(L);
zero=zeros(L);
Mt=[phi zero; zero psi]*[P -P;-P P]*[phi' zero;zero psi']*[one zero;zero -one];

end

