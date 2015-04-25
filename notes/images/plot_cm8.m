function plot_cm8
close all
n=1000;
x=linspace(0,1,n);
y=sqrt(1-x.^2);
plot(x,y,'r',x,ones(n,1),'b',[1,1],[0,1],'b')
axis([0,1.5,0,1.5])
xlabel('x')
ylabel('y')

figure()
x_i = 0.6 ;
plot(x,y,'r',x,ones(n,1),'b',[1,1],[0,1],'b',[x_i,x_i],[0,sqrt(1-x_i^2)],'k:')
text(0.6,-0.05,'x_i')
axis([0,1.5,0,1.5])
xlabel('x')
ylabel('y')


f=3 ; 
xg=-1.5;
xd=1.5;
x=linspace(xg,xd,n);

rac = -1/(4*f)+(1/f)*(-10:10) ;
figure
hold on
plot(x,sin(x*2*pi*f)+1,'b',[xg,xd],[0,0],'k')
plot(rac,0*rac,'r.','MarkerSize',20)
axis([xg,xd,0,3])
xlabel('x')
ylabel('y')
hold off




xg=0;
xd=1;
xmid1 = (xd-xg)/3;
xmid2 = 2*xmid1;
yg=0;
yd=1;
ymid1 = (yd-yg)/3;
ymid2 = 2*ymid1;
figure
hold on
plot([xg,xg],[yg,yd],'k',[xd,xd],[yg,yd],'k',[xg,xd],[yg,yg],'k',[xg,xd],[yd,yd],'k')
plot([xmid1,xmid1],[yg,yd],'k:',[xmid2,xmid2],[yg,yd],'k:');
plot([xg,xd],[ymid1,ymid1],'k:',[xg,xd],[ymid2,ymid2],'k:');
plot([xmid1,xmid2],[yg,yg],'b.',[xmid1,xmid1],[ymid1,ymid1],'r.',[xmid1,xmid1],[ymid2,ymid2],'r.',[xmid2,xmid2],[ymid1,ymid1],'r.',[xmid2,xmid2],[ymid2,ymid2],'r.','MarkerSize',20)
plot([xg,xg],[ymid1,ymid2],'b.','MarkerSize',20)
axis([xg-0.5,xd+0.5,yg-0.5,yd+0.5])
xlabel('x')
ylabel('y')
hold off

end

