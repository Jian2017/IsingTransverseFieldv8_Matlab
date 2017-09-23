%this program, test space-time correlation function and plot it

h=1;
la1=0.0;
la2=1.3;
L=160;
M=zeros(L);
dt=0.5;
for i=1:L-2
    M(i,i)=h;
    M(i,i+1)=-la1;
    M(i,i+2)=-la2;
end
M(L,L)=h;
M(L-1,L-1)=h;
M(L-1,L)=-la1;

% C = Cnt(M,20,1, 0.1,ceil(L/2)*100 );
C = Cnt(M,ceil(L/4),ceil(L/2),dt,ceil(L/2)*2 );

figure;
imagesc(abs(C ));
colorbar;
title(['spin-spin correlation |< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '+r}^x(0)>|']);
xlabel('space seperatation r, sites');
ylabel('time t');
set(gca,'Ydir','normal'); 

colorPlot(C,dt);


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