function output=pf(X)

% method by Xun JIA's paper.

Nx=size(X,1);
if mod(Nx,2) ~=0 
    output =0;
    disp('error, size is odd');
    return
end

if max(max(X.'+X))~=0
    output=0;
    disp('error, input is not skew-symmetric');
    return
end
    

output=1;
while Nx>0
    [a,XX]=iter(X);
    X=XX;
    Nx=Nx-2;
    output=output*a;
    
end

 

end