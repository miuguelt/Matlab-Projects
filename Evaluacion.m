x = 10:0.05:20;
y = 'sqrt((x.^3+2400)/30)';
%hold on
%f = 'x';
%fplot(y,[10 20]);
%fplot(f,[10 20]);
format short;
x = 10;
n = 2;
nex(1) = x;
delta(1) = 1;
while delta(n-1) > 0.0000001
    nex(n) = eval(y);
    delta(n) = nex(n)-x;
    x = nex(n);
    n = n+1;
end
disp('k        xk                   xk+1                 Delta ');
for i = 1:n-2
    disp(sprintf('%d %20d %20d %20d',i-1,nex(i),nex(i+1),delta(i+1)));
end