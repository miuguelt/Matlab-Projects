t=0.001
y(1)=1;
for i=1:10000000000
    y(i+1)=(t+1)*y(i);
end
disp('el numero Euler calculado por simulacion con la ecuacion es dy/dt=y es:')
disp(y(i+1));
