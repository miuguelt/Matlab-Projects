x = linspace(-pi,pi,100);
for i = 1:100
  y(i) = aprsin(x(i));
end
plot(x,[y;sin(x)])