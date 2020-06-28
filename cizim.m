ang=deg2rad(135):0.01:deg2rad(315);
xp=cos(ang);yp=sin(ang);


figure;
scatter(0,0,'og','filled');text(-1.2,-0.7,'S2','Color','white');
hold on;
scatter(0,5,'og','filled');text(-1.5,5.5,'S1','Color','white');
scatter(5,0,'og','filled');text(5.2,-0.5,'S3','Color','white');

plot([0 5],[0 0],'w--');text(2.5,-0.5,'x','Color','white');
plot([0 0],[0 5],'w--');text(-1,2.5,'y','Color','white');

scatter(8,8,'pr');
% plot(4*xp+8,4*yp+8,'b');
% plot(8*xp+8,8*yp+8,'b');
% plot(12*xp+8,12*yp+8,'b');
text(8.5,8.5,'(x_1,x_2)','Color','white');

xlim([-7.5 15]);
ylim([-7.5 15]);
axis off;
set(gca,'color','none');
set(gcf,'color','none');
fig=gcf;
fig.InvertHardcopy='off';

%saveas(gcf,'cizim.svg');


%%

figure;
scatter(0,0,'og','filled');text(-1.2,-0.7,'S2','Color','white');
hold on;
scatter(0,5,'og','filled');text(-1.5,5.5,'S1','Color','white');
scatter(5,0,'og','filled');text(4.5,-1,'S3','Color','white');

plot([5 8],[0 8],'w--');
plot([0 5],[0 0],'w--');text(2.5,-0.5,'x','Color','white');
plot([5 8],[0 0],'w--');text(6,-1,'x_1-x','Color','white');
plot([8 8],[0 8],'w--');text(8.5,4,'x_2','Color','white');

scatter(8,8,'pr');
text(8.5,8.5,'(x_1,x_2)','Color','white');

xlim([-7.5 15]);
ylim([-7.5 15]);
axis off;

set(gca,'color','none');
set(gcf,'color','none');
