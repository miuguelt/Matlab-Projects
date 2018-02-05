tol = input('Tolerancia');
n = input('Máxino de iteraciones');
x = -1;
for i=1:n
    f = x^2+x-0.5;
    xsub1 = eval(f);
    deltax = xsub1-x;
    if deltax < tol
        break;
    end
    x = xsub1;
end
