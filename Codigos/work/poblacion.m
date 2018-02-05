function [p]=poblacion(Pi,year,z,Pf)
p=[year Pi];
while(Pf>Pi)
    Pi=Pi+z*Pi;
    year=year+1;
    p=[p;year Pi]
end
plot(p(:,1),p(:,2),'r-')
,xlabel('años','color','m'),ylabel('poblacion','color','r'),title('crecimiento poblacion de quito','color','b');
end