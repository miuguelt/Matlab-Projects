clear all; clc;
%x(1)=1;x(2)=3;x(3)=6;x(4)=9;x(5)=15;
%y(1)=1.6332;y(2)=1.0986;y(3)=0.90826;y(4)=0.85015;y(5)=0.77832;
x(1)=1;x(2)=2;x(3)=3;x(4)=4;x(5)=5;x(6)=6;
y(1)=2.3;y(2)=6.1;y(3)=10.7;y(4)=16;y(5)=21.9;y(6)=28.3;
%x = [1710 1810 1910 2010 2110]
%y = [0 1 4 9 15]
%x = [4800 3700 3400 2800 1900]
%y = [3.1 4 5.2 6.4 9.6]
%x = input('Ingreses los datos de x [] ')
%y = input('Ingreses los datos de y [] ')
hold on; grid on;
plot(x,y);
disp('1: y(x) = a*e^(bx), 2: y(x) = a*x^b, 3: y(x) = a + b*ln(x)'); 
disp('4: y(x) = a + b/x, 5: a/(b +x), 6: a*x/(b + x)');
disp('Para salir precione (cero)0')
metodo = input('Por cual metodo desea resolver el sistema '); 
n = 0;
errorMedio = zeros(6);
errorCuadratico = zeros(6);
g = zeros(6);
errorMaximo = zeros(6);
met = zeros(6);
while metodo ~= 0
    
    tama = size(y,2);
    ty = zeros(tama,1);
    tx = zeros(tama,1);
    %Seleccion del metodo
    switch metodo  
        case 1
            for  i = 1: tama
                ty(i) = log(y(i)); 
                tx(i) = x(i);
            end
        case 2
             for  i = 1: tama
                ty(i) = log(y(i));
                tx(i) = log(x(i));
             end
        case 3
            for  i = 1: tama
                ty(i) = y(i);
                tx(i) = log(x(i));
            end
        case 4
             for  i = 1: tama
                ty(i) = y(i);
                tx(i) = log(x(i));
            end
        case 5
             for  i = 1: tama
                ty(i) = y(i);
                tx(i) = x(i)*y(i);
            end
        case 6
             for  i = 1: tama
                ty(i) = y(i);
                tx(i) = y(i)/x(i);
            end
    end %Fin selección del método


    %Creación de la matriz y el vector
    A = zeros(2,2);
    b = zeros(2,1);
    A(1,1) = tama;
    for i = 1 : tama
        A(1,2) = A(1,2) + tx(i); 
    end
    A(2,1) = A(1,2);
    for i = 1 : tama
        b(1,1)= b(1,1) + ty(i); 
    end
    for i = 1 : tama
        A(2,2) = A(2,2) + tx(i)^2;
    end
    for i = 1 : tama
        b(2,1) = b(2,1) + tx(i)*ty(i);
    end
    sol = A\b
    %Fin creación de la matriz y el vector con su respectiva solucion
    v = x(1):1:x(tama); 
    switch metodo %Selección de la función a graficasr
        case 1
            alfa = exp(sol(1));
            beta = sol(2);
            fun = alfa.*exp(beta.*v);
        case 2
            alfa = exp(sol(1));
            beta = sol(2);
            fun = alfa.*(v.^beta);
        case 3
            fun = sol(1) + sol(2).*log(v);
        case 4
            fun = sol(1) + sol(2)./v;
        case 5
            alfa = -sol(1)/sol(2);
            beta = -1/sol(2);
            fun = alfa./(beta + v);
        case 6
            fun = sol(1).*v./(v-sol(2));        
    end
    plot(v,fun,'red');
    %Fin seleccion de funcion a graficar
    %Calculo de R(g)
    ypromedio = 0;
    for i = 1: tama
        ypromedio = ypromedio + y(i);
    end
    ypromedio = ypromedio/tama;
    n = n + 1;
    sumaSuper = 0;
    sumaInfer = 0;
    errorMaximo(n) = abs(fun(1)-y(1));
    for i = 1: tama
        v = x(i);
        sumaSuper = sumaSuper + (fun(x(i)) - ypromedio)^2;
        sumaInfer = sumaInfer + (y(i) - ypromedio)^2;
        errorActual = abs(fun(x(i)) - y(i));
        errorMedio(n) = errorMedio(n) + errorActual;
        if(errorMaximo(n) < errorActual)
            errorMaximo(n) = errorActual;
        end
        errorCuadratico(n) = errorCuadratico(n) + errorActual^2; 
    end
    errorMedio(n) = errorMedio(n)/tama;
    errorCuadratico(n) = sqrt(errorCuadratico(n)/tama);
    g(n) = sumaSuper/sumaInfer;
    met(n) = metodo; 
    metodo = input('Dese Resolver por otro Método ');
end

disp('')
disp('Indice de Ajuste R(g)   Error Maximo   Error Medio   Error Cuadratico medio   Método');
for i = 1: n
    disp(sprintf('%f | %21f | %12f | %12f | %17g |',g(i),errorMaximo(i),errorMedio(i),errorCuadratico(i),met(i)));
end
%Fin Calculo de R(g)
%Inico calculo de error maximo


