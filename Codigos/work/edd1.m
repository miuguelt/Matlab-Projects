clear
%definir la ecuacion diferencial
% como dos ecuaciones de primer orden
f1=inline('x2','x1','x2','t');
f2=inline('-1.5*x2-3*x1+3','x1','x2','t');
%
%condiciones iniciales y tiempos
x1o=0;x2o=0;to=0;dt=0.0625;tu=8.0;
x1(1)=x1o;x2(1)=x2o;t(1)=to;
n=0;
%
%solucion numerica
while t(n+1)<tu
    n=n+1;
    k11=dt*f1(x1(n),x2(n),t(n));
    k12=dt*f2(x1(n),x2(n),t(n));
    x1(n+1)=x1(n)+k11;
    x2(n+1)=x2(n)+k12;
    t(n+1)=t(n)+dt;
end
%graficar la solucion
plot(t,x1,'b')
grid on
title('solucion de (p^2+1.5*p+3)y(t)=3por euler')
xlabel('tiempo'),ylabel('y(t)')