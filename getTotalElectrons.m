function y=getTotalElectrons(x)

nE=0;
for i=1:length(x)
    
    nE=nE+x(i).electrons;
    
end

y=nE;