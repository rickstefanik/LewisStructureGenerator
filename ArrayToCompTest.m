clear;

clc;

load('elementInfo');


compound = [H F];


y = chemicalArrayToComputerArray(compound);


for i=1:length(y)
    
    disp([y(i).ReferenceElement.letter, ': ']);
    disp(y(i));
end
