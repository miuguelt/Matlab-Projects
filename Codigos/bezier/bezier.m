function  xys= bezier(m,xy2)
h=0;
xys = [];m=m-1;
for t=0:0.01:1
    h=h+1;
    x=0;y=0;b=0;
    for j=0:m
        b=factorial(m)/(factorial(j)*factorial(m-j));
        b=b*(t^j);
        b=b*((1-t)^(m-j));
        x=x+b*xy2(1,j+1);
        y=y+b*xy2(2,j+1);
    end    
    xys(:,h) = [x;y];
end

