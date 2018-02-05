clear all;
hold on;
grid on;
syms t;
format short;
disp('Calculo de la temperatura final del sistema');
f = 1.02501715 +9.40313*(log(t)-(2.4584e-6)*(t^2-6914.224*t+5687791.092))-864563.3012/(t^(2.6))-(2.6695e+11)/(t^5.2);

ezplot(f);

y  = solve(f,t);
disp('')
disp('Resultado en kelvin');
disp(y(1));