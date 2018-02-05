function resultado=errormax(x,y,fun)
largo=length(x);
eval=zeros(1,largo);
for i=1:largo
   temp=polyval(fun,x(i))-y(i);
   eval(i)=abs(temp);
end
resultado=max(eval);

%para error medio: resultado/largo;