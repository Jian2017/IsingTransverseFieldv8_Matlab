function Swk=colorPlot(CSnt,dt)

h=figure('visible','off');
colormap parula;  %try pink, hot, parula, jet

imagesc(abs(CSnt));
set(gca,'Ydir','normal'); 
colorbar;
print(h,'-dpng','abs(CSnt)');
close(h);


Swk=hanF(CSnt);



t4=size(Swk,1);
t1=round(t4/4);
t2=round(t4/2);

w1=abs(Swk);
w0=w1;

w0(1: t1 ,:)=w1(t4-t1+1:t4,:);
w0(t1+1: t4,:)=w1(1:t4-t1,:);
 h1=figure('visible','off');
imagesc(w0);
set(gca,'Ydir','normal'); 


colormap parula;  %try pink, hot, parula, jet
colorbar;

xlabel('ka')
xticks=[1 size(Swk,2)/2 size(Swk,2)];
set(gca, 'XTick', xticks, 'xticklabel', {'0' '\pi' '2 \pi '});

ylabel([num2str(1/dt) '\omega/J'])
yticks=[1 t1 t4-t1 t4];
set(gca, 'YTick', yticks, 'YTickLabel', { '-0.5 \pi ' '0' '\pi' '1.5 \pi'});


title('S(\omega,k)');




 
hold on
plot([1 size(Swk,2)], [ t1  t1 ],'w--');




print(h1,'-dpng','abs(Swk)');
close(h1);
% 
% xticks = linspace(1, size(data, 2), numel(xticklabels));
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)