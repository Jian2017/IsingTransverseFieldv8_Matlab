% this test single space-time correlation, using pfaffian method


addpath('./Pfaffian');
addpath('./Mt2SS');
addpath('./Mt2S');
addpath('./M2Mt');

L=40;
M=zeros(L);
for i=1:L-1
    M(i,i)=1;
    M(i,i+1)=0.5;
end
M(L,L)=1;

[psi,E,phi]=svd(M);

Mt=fermionfermionPlusMinusCorrelation(0,phi,psi,E);
M0=fermionfermionPlusMinusCorrelation(0,phi,psi,E);
i=10;
j=14;


for j=10:20
    S=generating_S(Mt,M0,i,j);
    pf(S)
end

