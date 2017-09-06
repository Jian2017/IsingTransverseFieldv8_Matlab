function [a,XX]=iter(X)
    

    [a,i,j]=largest(X);
    
    
    [B,C]=getBC(X,i,j);
    
    invA=[0 -1/a; 1/a 0];
    
    XX=C+B.'*invA*B;
    
    a=a*(1-2*mod(i+j-3,2)); %took me one hour to debug, and add this term
    
end

    