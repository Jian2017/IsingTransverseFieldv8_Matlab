%this program, test space-time correlation function and plot it


L=120;
M=zeros(L);
for i=1:L-1
    M(i,i)=1;
    M(i,i+1)=-0.5;
    
end
M(L,L)=1;


C = Cnt(M,ceil(L/4),ceil(L/2),1,ceil(L/2));
imagesc(abs(C ));
colorbar;

title(['spin-spin correlation |< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '+r}^x(0)>|']);
xlabel('space seperatation r, sites');
ylabel('time t');
set(gca,'Ydir','normal'); 