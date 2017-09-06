function pf=pfaffianXun(X)

Nx=size(X,1);
if mod(Nx,2) ~=0 
    pf =0;
    disp('error, size is odd');
    return
end

if max(max(X.'+X))~=0
    pf=0;
    disp('error, input is not skew-symmetric');
    return
end
    

pf=1;
while Nx>0
    [a,XX]=iter(X);
    X=XX;
    Nx=Nx-2;
    pf=pf*a;
    
end

 

end