%axis([0 400 0 400]) %define el  tamaño de la zona de trabajo
clear all
%
clc
grid on %aparezca cuadricula
but = 'r';
a=imread('G:\pika.jpg','jpeg');
image(a);
hold on
while but=='r'
but=1;
n = 0;
xy = [];
while but == 1
[xi,yi,but] = ginput(1); %obtiene la posicion del punto
if but==1 %but=1 significa que oprimio el boton izquierdo
plot(xi,yi,'g*')%grafica el puntod
n = n+1;%contador de numero de puntos
xy(:,n) = [xi;yi];%copia los puntos en el vector xy
end
end % termina si oprime otra tecla diferente al click izquierdo
xys=bezier(n,xy);
plot(xys(1,:),xys(2,:),'b-');%grafica la curva aproximada
xy(2,:)=220-xy(2,:)
end % si se oprime la tecla 'r' continua el programa 
hold off