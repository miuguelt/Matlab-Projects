clear all;
clc;
k=-0.19018;
p=1;
t(1)=300;
for i=1:1000
    t(i+1)=t(i)*(p*k+1)-70*p*k;
    if(abs(70-t(i+1))<0.5)
        disp('la temperatura llega a 70 grados en');
        tiempo=i+1;
        disp(tiempo);disp('minutos');
        break;
    end
end
plot(t);
