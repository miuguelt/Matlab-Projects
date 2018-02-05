function [em,emedio,ecmedio,r] = parabolados(m,x,y)
em=zeros(1,m);
emediosum=0;
ecmediosum=0;
num=0;
den=0;
for k=1:m
    ymedio=(sum(y))/m;
    em(1,k) = abs(-0.5714 +5.1429*x(1,k)-0.6429*(x(1,k).^2)-y(1,k));
     num = num +(-0.5714 +5.1429*x(1,k)-0.6429*(x(1,k).^2)-ymedio)^2;
     den=den +(y(1,k)-ymedio)^2;
    emediosum=emediosum + em(1,k);  
    ecmediosum=ecmediosum + em(1,k).^2;
end
emedio=emediosum/m;
ecmedio=ecmediosum^(1/2)/m^(1/2);
r=num/den;