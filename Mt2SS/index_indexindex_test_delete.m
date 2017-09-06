clear;clc;
i=10;
j=12;

M=zeros(4*(i+j-1));
M2=zeros(4*(i+j-1));

for ia=1:4*(i+j-1)
    for ja=(ia+1):4*(i+j-1)
        [M(ia,ja),M2(ia,ja)]=index_indexindex(ia,ja,i,j);
    end
end

imagesc(M);
colorbar;
figure;
imagesc(M2);
colorbar;