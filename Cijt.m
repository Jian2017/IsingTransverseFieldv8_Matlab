function output=Cijt(M,i,j,t)

%Cijt(M,i,j,t)
% i is the starting point 
% j is the ending point 
% t is time
% <X_i(t) X_j(0)>

addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/Pfaffian');
addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/Mt2S');
addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/M2Mt');

[psi,E,phi]=svd(M);


M0=fermionfermionPlusMinusCorrelation(0,phi,psi,E);
Mt=fermionfermionPlusMinusCorrelation(t,phi,psi,E);
S=generating_S(Mt,M0,i,j);

output=pf(S);

end
