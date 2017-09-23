function output=CCnt(M,i,Nx,dt,Nt)

% Nx and Nt are integers
% i is the starting point of space, i, i+1, i+2, ..., i+(Nx-1)
% 0 is starting point of time, dt is the step size
% 0, dt, 2*dt, ..., (Nt-1)*dt

addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/Pfaffian');
addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/Mt2SS');
addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab/M2Mt');

output=zeros(Nt,Nx);


[psi,E,phi]=svd(M);


M0=fermionfermionPlusMinusCorrelation(0,phi,psi,E);

for t=0:(Nt-1)
    Mt=fermionfermionPlusMinusCorrelation(t*dt,phi,psi,E);
    for j=i:i+(Nx-1)
        SS=generating_SS(Mt,M0,i,j);
        output(t+1,j-i+1)=pf(SS);
    end
end

end