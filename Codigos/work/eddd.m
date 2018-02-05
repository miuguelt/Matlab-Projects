%archivo de ejecucion para la funcion cstr
%noviembre de 2010
%rutina de integracion
clear all; format;
[t,c]=ode45('cstr',[0 10],[0.4; 0.2; 0.1]);%utilizar el comando
%determine la longitud de las series de tiempo y var. de
npts=length(t);
%definir la forma de salida
disp('******************************************************')
disp(' tiempo      ca1           ca2           ca3')
disp('  (seg)   (Kmol/m3)      (Kmol/m3)      (Kmol/m3)   ' )
disp('******************************************************')
for n=1:5:npts
disp([t(n),c(n,1),c(n,2),c(n,3)]);
end
plot(t,c(:,1),'-',t,c(:,2),'-',t,c(:,3),'-x');
legend('ca1','ca2','ca3')
xlabel('tiempo:seg')
ylabel('conentracion: Kmol/m3')
title('tres cstr en serie')
grid on

    
