%this program, test space-time correlation function and plot it
% strategy, start with small size L, then guess the matched time length,
% then, increase L and T with same ratio

h=1;
la1=0.99;
la2=0;

L=80;
M=zeros(L);
istart=ceil(L/4);
Nx=1;
dt=0.1;
Nt=200;

for i=1:L-2
    M(i,i)=h;
    M(i,i+1)=-la1;
    M(i,i+2)=-la2;
end
M(L,L)=h;
M(L-1,L-1)=h;
M(L-1,L)=-la1;


C = Cnt(M,istart,Nx,dt,Nt );
CC = CCnt(M,istart,Nx,dt,Nt);

plot(C,'.-');
plot(2*imag(C),'.-');


% figure;
% imagesc(abs(C ));
% colorbar;
% title(['spin-spin correlation |< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '+r}^x(0)>|']);
% xlabel('space seperatation r, sites');
% ylabel('time t');
% set(gca,'Ydir','normal'); 

% colorPlot(C,dt);


%% below is for, plotting the z(t) curve of <AB>
% figure;
% % plot(C,'.-');
% plot(C(1:end/2,1),'.-');
% hold on;
% plot(C(end/2:end,1),'.-');
% hold off;
% pbaspect([1 1 1]);
% axis equal
% xlabel(['Real [< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '}^x(0)>]']);
% ylabel(['Imag [< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '}^x(0)>]']);
% title(['dynamics:  h=1, \lambda_1=' num2str(la1)]);
% xL = xlim;
% yL = ylim;
% line([0 0], yL);  %y-axis
% line(xL, [0 0]);  %x-axis