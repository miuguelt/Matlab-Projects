clear all;
%for i = 1: 10
 %   x(i) = 5*i;
%end
%y(1) = 16 ; y(2) = 25 ;y(3) = 32 ;y(4) = 33 ;y(5) = 38 ;y(6) = 36 ;y(7) = 39 ;y(8) = 40 ;y(9) = 42 ;y(10) = 47;
for i = 1: 9
    x(i) = 10*i;
end
y(1) = 29 ;y(2) = 32 ;y(3) = 34 ;y(4) = 36 ;y(5) = 40 ;y(6) = 42 ;y(7) = 45 ;y(8) = 49 ;y(9) = 52 ;

hold on;
grid on;
plot(x,y,'*');
hold on;
M = zeros(2,2);
b = zeros(2,1);
M(1,1) = 9;
for i = 1: 9
  M(1,2) = M(1,2) + x(i);  
end
M(2,1) = M(1,2);
for i = 1: 9
  M(2,2) = M(2,2) + x(i).^2;  
end

for i = 1: 9
  b(1,1) = b(1,1) + y(i);  
end

for i = 1: 9
  b(2,1) = b(2,1) + x(i).*y(i);  
end
res = M\b
v = 0:100;
f = res(1) + res(2).*v;
plot(v,f,'r');