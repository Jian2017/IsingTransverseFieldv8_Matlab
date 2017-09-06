function [B,C]=getBC(X,i,j)

if i>j
    disp('error, in getBC');
    return
end

[Nx,Ny]=size(X);

ij=[i j];
idx=[1:(i-1) (i+1):(j-1) (j+1):Nx];

C=X(idx,idx);
B=X(ij,idx);

end


