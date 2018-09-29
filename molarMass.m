function y=molarMass(x)

MMtotal=0;

load('elementInfo');

for i=1:length(x)
    
    a=x(i);
    
    MMtotal= MMtotal+ a.molarMass;
    
    
end

y=MMtotal;