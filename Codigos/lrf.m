function [em,emedio,ecmedio,r,fsuma] = lrf(m,x,y)
em=zeros(1,m);
emediosum=0;
ecmediosum=0;
num=0;
den=0;
fsuma=0;
for k=1:m
    %disp (k);
    ymedio=(sum(y))/m;
    em(1,k) = abs( 0.1282 +5.4829*x(1,k)-y(1,k));
     num = num +(0.1282  +5.4829*x(1,k)-ymedio)^2;
     den=den +(y(1,k)-ymedio)^2;
     fsuma=fsuma + em(1,k)^2;
   %disp (em);
    emediosum=emediosum + em(1,k);  
    ecmediosum=ecmediosum + em(1,k).^2;
%    sumaem2=em2(k) +sumaem2;    
    %disp (em2);
    %disp (sumaem2);
end
emedio=emediosum/m;
ecmedio=ecmediosum^(1/2)/m^(1/2);
r=num/den;
%em2sumat= sumaem2/m;
%em2csumat=sumaem2/m^(1/2);