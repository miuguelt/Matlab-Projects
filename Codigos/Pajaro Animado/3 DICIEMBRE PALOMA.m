clear all
clc
a=0:0.0001:0.01;
plot(a,a)
hold on
x1=[2 4 6]
y1=[2 2 2]
xx1=2:0.001:6;
yy1=spline(x1,y1,xx1);
plot(xx1,yy1);
gid on

x4=[3.25 4 5 6.25];
y4=[3 3.5  3.75 2.25]
xx4=3.25;0.0001:6.25;
yy4=spline(x1,y1,xx1);
plot(xx4,yy4);