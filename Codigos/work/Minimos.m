x=input ('Ingrese el vector x');
x=x';
y=input ('Ingrese el vector y');
y=y';
[x]
[y]
plot(x,y), grid on;
p1=polyfit(x,y,1);
b=p1(1)
a=p1(2)
m=length(x);
for n= 1:m
    e(n)=((a+b*x(n)) - y(n));
end


sumatoria=sum(abs(e));
errormedio=sumatoria/m


for j= 1:m
    e1(j)=((a+b*x(j)) - y(j))^2;
end

sumatoria1=sum(abs(e1));
k=sumatoria1/m;
error_cuadratico=k^(1/2)

error_maximo=max(abs(e))


ytotal=(sum(y))/m;
for n= 1:m
    er1(n)=((a+b*x(n)) - ytotal)^2;
end

for n= 1:m
    er2(n)=(y(n) - ytotal)^2;
end

numerador=sum(er1);
denominador=sum(er2);

r=numerador/denominador
y2=polyval(p1,x);
plot(x,y,'+',x,y2,'-')

for n=1:m
    residuos(n)=(e(n)- y(n));
end 
plot(residuos,'*')
    