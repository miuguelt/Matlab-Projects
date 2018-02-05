function resultado=ecuadmed(x,y,fun)
largo=length(x);
acum=0;
for i=1:largo
   temp=polyval(fun,x(i))-y(i);
   acum=acum+temp^2;
end
resultado=acum/largo;