function resul=coeficientes(grado,x,y)
num=length(x);
B=zeros(1,num);
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
disp(matriz)
re(1,1)=sum(y);
for i=2:grado
    for u=1:num
    temp(u)=y(u)*(x(u)^(i-1));
    end
    re(i)=sum(temp);
end
disp(re)
resul=re*inv(matriz);