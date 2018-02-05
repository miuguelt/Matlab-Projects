function resul=coeficientes(grado,x,y) % grado es el grado del polinomio con el que se desea realizar el ajuste(numero de coeficientes en el polinomio)
num=length(x);
matriz=zeros(grado,grado);
for j=1:grado
    cont=j-1;
    for k=1:grado
        if (k==1) && (j==1)
            matriz(k,j)=num;
            cont=1;
        else
            matriz(j,k)=[sum(x.^cont)];
            cont=cont+1;
        end
    end 
end
%disp(matriz) %muestra la matriz resultante de las sumatorias
re(1,1)=sum(y);
for i=2:grado
    for u=1:num
    temp(u)=y(u)*(x(u)^(i-1));
    end
    re(i)=sum(temp);
end
%disp(re) %muestra el vector resultante de las sumatorias
uno=re*inv(matriz);
dos=zeros(1,grado);
w=grado;
for t=1:grado %invertir el orden de los coeficientes a b c --> c b a
    dos(t)=uno(w);
    w=w-1;
end
resul=dos;