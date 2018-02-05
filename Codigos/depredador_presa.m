clf
cla;
axHndl=gca;
set(axHndl,...
    'Drawmode','fast',...
    'Visible','on',...
    'NextPlot','add');
grid on

drawPres=line(...
    'color','b',...
    'linestyle','-',...
    'erase','none',...
    'xdata',[],'ydata',[]);

drawPred=line(...
    'color','r',...
    'linestyle','-',...
    'erase','none',...
    'xdata',[],'ydata',[]);

Pres=50;
Pred=5;
a=0.04;
b=0.001;
c=0.3;
d=0.001;
T=300;
h=0.05
NP=ceil(T/h);
t=(0:h:T);
axis([0 T -1 600]);
x=zeros(size(t));
y=zeros(size(t));
Pred(1)=Pred;
Pres(1)=Pres;
for i=1:NP
    Pres(i+1)=Pres(i)+h*(a*Pres(i)-b*Pres(i)*Pred(i));
    Pred(i+1)=Pred(i)+h*(-c*Pred(i)+d*Pres(i)*Pred(i));
    set(drawPres,'xdata',[t(i),t(i+1)],'ydata',[Pres(i),Pres(i+1)]);
    drawnow;
    set(drawPred,'xdata',[t(i),t(i+1)],'ydata',[Pred(i),Pred(i+1)]);
    drawnow;
end
plot(t,Pres,'b')
plot(t,Pred,'r')
xlabel('Tiempo')
ylabel('Poblacion')
title('MODELO DEPREDADOR-PRESA')
legend('Presa','Depredador')
    