N=1000;
C=1000;
b=0.01;
r=0.03;
T=300;
K=r/C;
h=0.05;
NP=ceil(T/h);
t(1)=0;
N(1)=N;
C(1)=C;
for i=1:NP
    t(i+1)=t(i)+h;
    N(i+1)=N(i)+h*K*C(i)*N(i);%euler
    C(i+1)=C(i)-h*b*K*C(i)*N(i);
end
plot(t,N)
xlabel('Tiempo')
ylabel('Poblacion')
title('Crecimiento logistico de poblacion con nutrientes')
grid on