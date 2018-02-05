%A = input('Ingrese la matriz [n;n;n]3xn ')
%b = input('Ingrese el vector b [ ] ')
clear all;    
CrearMatrizDispersa;
    tam = size(A,1);
    x = zeros(size(A,1),1);
    n = 0; tol = 1;
    tic;
    while (tol > 0.0000002)
        n = n+1;
        for i = 1: tam
            anterior = x(i);
            x(i) = b(i);
            for j = 1: tam
                if i == j
                   div = A(i,j);
                else
                   x(i)= x(i)-A(i,j)*(x(j));

                end
            end       
            x(i) = x(i)/div;
            %cont = cont+1;
            %valores(cont) = x(i);
        end
        tol = abs((x(i)-anterior)/x(i));
        if n == 9800
            break;
        end
    end
    format short;
    r = 0;
    time1= toc;
    tic
    vr = A\b;
    time2 = toc;
    tic
    vi = inv(A)*b;
    %vi = rref([A b]);
    time3 = toc;




%for i = cont-tam+1 : cont
   %disp(sprintf('%e  %e',valores(i),vr(i-cont+tam)));
%end 
%disp('');
disp('G seidel           A\b           inv(A)*b');
for i = 1 : tam
   disp(sprintf('%e   %e   %e',x(i),vr(i),vi(i)));
end

time1
time2
time3


% Conclucion: entre más grande sea la matríz se necesitan más iteraciones
% para obtener mejores resultados








