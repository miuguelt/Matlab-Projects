function iajuste=R(x,y,fun)
num=length(x);
ymedio=(num^-1)*sum(y);
acum1=0;
acum2=0;
for i=1:num
    pre1=polyval(fun,x(i))-ymedio;
    acum1=acum1+pre1^2;
    pre2=y(i)-ymedio;
    acum2=acum2+pre2^2;
end
iajuste=acum1/acum2;