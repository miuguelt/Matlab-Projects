disp('Calculando por fabor espere................. por siempre');
clear;
for tam = 5 : 50      %Resuelv k matrices y guarda los tiempos  
    V = ones(tam-1,1);
    A = -2*eye(tam)+diag(V,-1)+diag(V,1);
    for(i = 1 : tam)
        if(i ~= tam)
            b(i,1) = -1.5;
        end
        if(i == tam)
            b(i,1) = 0.5;
        end
        if(i == 1)
            b(1,1) = -0.5;
        end
    end
    %Inicio G seidel
    tam
    x = zeros(size(A,1),1);
    n = 0; tol = 1;
    tic;
    while (tol > 0.000000000000000000000000000000002)
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
    time1(tam)= toc;
    tic
    vr = A\b;
    time2(tam) = toc;
    tic
    vi = inv(A)*b;
    time3(tam) = toc;
end
hold on;
grid on;
plot(time1,'b');
plot(time2);
plot(time3,'y');