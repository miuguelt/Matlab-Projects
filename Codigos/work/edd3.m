f(1) = 1;
f(2) = 1;

% Crea los primeros 30 números de Fibonacci
for i = 3 : 30
% Suma los correspondientes elementos
f(i) = f(i-1) + f(i-2);
end
% Despliega resultados
f