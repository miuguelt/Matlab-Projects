af = '(34-22*b-11*c+18*d)/56';
bf = '(82-17*a+12*c-7*d)/66';
cf = '(18-3*a+5*b-20*d)/47';
df = '(26-11*a-16*b-17*c)/10';

format rational
a = 0;
b = 0;
c = 0;
d = 0;
n = 1;
tol = 2;
av(n) = a; 
bv(n) = b;
cv(n) = c;
dv(n) = d;
while (tol > 0.0001 || n == 10)
    n = n+1
    av(n) = eval(af);
    bv(n) = eval(bf);
    cv(n) = eval(cf);
    dv(n) = eval(df);
    tol = abs((dv(n)-d)/dv(n))
    a = av(n); b = bv(n); c = cv(n); d = dv(n);
    if n == 12
        break;
    end
end

disp('valores de x '); disp('');
disp('n      x1            x2              x3              x4')
for i=1:n
    disp(sprintf('%d %14d %14d %14d %14d',i,av(i),bv(i),cv(i),dv(i)));
end

