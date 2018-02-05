function [m]=material(Mi,z,Mf)
tiempo=0;
m=[tiempo Mi];
while (Mi>Mf)
    Mi=Mi-z*Mi*25000;
    tiempo=tiempo+25000;
    m=[m;tiempo Mi];
end
plot(m(:,1),m(:,2),'r-');
xlabel('Años','Color','m');
ylabel('masa de plutonio','color','r');
title('decaimiento radioactivo de plutonio');
end