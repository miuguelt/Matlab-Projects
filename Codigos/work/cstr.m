%funcion cstr para tres CSTRs en serie
%noviembre de 2010
function ecuacion=cstr(t,c);
%vector columna de arreglo de derivadas de variables
ecuacion=zeros(3,1);
%define un vector columna de 3 el
%sistemas de ecuaciones
ecuacion(1)=((1.8-c(1))/2)-0.5*c(1);
ecuacion(2)=((c(1)-c(2))/2)-0.5*c(2);
ecuacion(3)=((c(2)-c(3))/2)-0.5*c(3);