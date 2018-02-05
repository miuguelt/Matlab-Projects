function result=normalizar(n,x)
tam=length(x);
a=x(tam);
b=x(1);
c=a-b;
nuevox=zeros(1,tam);
nuevoy=zeros(1,tam);
for k=1:tam
    nuevox(k)=(((2*n)/c)*(x(k)-b))-n;
end
result=nuevox;