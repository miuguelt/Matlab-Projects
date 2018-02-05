n = input('¿Cuántos términos quiere sumar? ');
x = input('Dame el valor de x ');
suma = 1;
for i=2:n
    suma = suma*i*x^(i-1);
end
disp('El valor pedido es: ');
disp(suma);