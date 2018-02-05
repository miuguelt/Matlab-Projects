clear all;
V1=10e04;
V2=10e04;
Q=10;
D=10e-05;
R1=0.1;
R2=1.2625;
Cmin=10e-02;
T=50000;%tiempo de simulacion
h=1;%tamaño de paso
NP=ceil(T/h);

t(1)=0;

%digitamos los datos de entrada para C1,C2,B1,B2
C1(1)=input('digite C1 para el tanque 1');
B1(1)=input('digite B1 para el tanque 1');
C2(1)=input('digite C2 para el tanque 1');
B2(1)=input('digite B2 para el tanque 1');
for i=1:NP
  
        t(i+1)=t(i)+h;
     C1(i+1)=C1(i)+h*(((Cmin-C1(i))*Q/V1)-R1*B1(i)*C1(i));
     B1(i+1)=B1(i)+h*(B1(i)*(R2*C1(i)-D-Q/V1));
       for j=1:NP
    t(j+1)=t(j)+h;
     C2(j+1)=C2(j)+h*(((C1(i)-C2(j))*Q/V2)-R1*B2(j)*C2(j));
     B2(j+1)=B2(j)+h*(B2(j)*(R2*C2(j)-D-Q/V2));
 end
 end
 plot(t,C1)
 xlabel('Tiempo')
 ylabel ('concentracion de contaminante del tanque 1')
 grid on
 
 figure
 plot(t,B1)
 xlabel('Tiempo')
 ylabel('Contaminante mas microorganismos')
 title('CONCENTRACION TOTAL EN EL TANQUE 1')
 grid on
 figure
 plot(t,C2)
 xlabel('Tiempo')
 ylabel ('concentracion de contaminante del tanque 2')
 grid on
 figure
  plot(t,B2)
 xlabel('Tiempo')
 ylabel('Contaminante mas microorganismos')
 title('CONCENTRACION TOTAL EN EL TANQUE 2')
 grid on
 
    
    
