function m = Euclides(a,b)
if a<b
    c = b;
    b = a;
    a = c;
end
while b>0
    c = rem(a,b);
    a = b;
    b = c;
end
m = a;
    