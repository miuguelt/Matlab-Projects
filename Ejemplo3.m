n = input('Dame el número que quieres cambiar de base ');
base = input('¿En que base quieres expresarlo?  ');
i=1;
while n>0
    c(i) = rem(n,base);
    n = fix(n/base);
    i = i+1;
end
disp('La expresión en la base dada es: ');
i = i-1;
disp(c(i:-1:1));