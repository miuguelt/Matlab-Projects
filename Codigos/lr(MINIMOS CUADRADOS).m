function [em] = lr(m,x,y)
em=zeros(1,m);
for k=1:m
    input k;
    em(1,1) = 0.07143+0.8393*x(1,1)-y(1,1);
    input em;
end
