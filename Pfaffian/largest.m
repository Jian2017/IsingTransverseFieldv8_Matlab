function [a,i,j]=largest(X)

% give matrix X, find the largest value a , and index X(i,j)   i>j
%https://stackoverflow.com/questions/13531009/how-can-i-find-the-maximum-value-and-its-index-in-array-in-matlab

[~,I] = max(abs(X(:)));
[I_row, I_col] = ind2sub(size(X),I);


if I_row<I_col
    i=I_row;
    j=I_col;
else
    i=I_col;
    j=I_row;
end


a=X(i,j);

end