    tam = input('ingrese el tamaño de la matriz ');
    V = ones(tam-1,1);
    A = -2*eye(tam)+diag(V,-1)+diag(V,1);
    for(i = 1 : tam)
        if(i ~= tam)
            b(i) = -1.5;
        end
        if(i == tam)
            b(i) = 0.5;
        end
        if(i == 1)
            b(1) = -0.5;
        end
    end
    b = b';
