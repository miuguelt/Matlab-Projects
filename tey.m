format long;
verdadero = 0.544987104184;
n = 1;
a = 0;
b = 0.5;
syms x;
%hold on
%ezplot(exp(x^2));
error = 1;
while error > 1e-12
    pol = taylor(exp(x^2),n*2-1,0); %Calculamos polinomio de taylor
    disp('Polinomio ');
    disp(pol);
    in = int(pol); %Integramos el polinomio
    disp('Integral ');
    disp(in);
    x = a;
    inferior = eval(in); %Evaluamos la integral en el punto a;
    x = b;
    superior = eval(in); %Evaluamos la integral en el punto b;
    total = superior-inferior;
    disp('Calculo Integral. ');
    error = abs(verdadero-total);  %Calculo de error
    disp('error ');
    disp(error);
    poli(n) = pol;
    vtotal(n) = total; 
    verror(n) = error;
    n = n+1;
    syms x;
    disp('fin operacion');
end
disp('Iteracion        Integral Evaluada              Error'); 
for i=1:n-1
    disp(sprintf('%d %28d %30d', i,vtotal(i),verror(i)));
    %sprintf('%d',i) 
    %disp(i);
   % disp(i)disp( ,'    ', vtotal(i),'       ', verror(i));
end
hold on;
for i=1:n-1
    col = [0,rand,rand];
    h = ezplot(poli(i),[-0.8 1]);
    set(h, 'Color', col);
end

y=-0.8:0.05:1;
fun=exp(y.^2);
plot(y,fun,'r')
disp('Fin');

