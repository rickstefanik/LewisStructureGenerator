function y=FormalChargeText(x)
% This function is going to take the formal charge for each element and
% then turn that into a string which will be diplayed on the GUI


y = '';

load('elementInfo.mat');


for i=1:length(x)
    
    if (x(i).FormalCharge <= 0)
        y = [y, x(i).ReferenceElement.letter, ': ', num2str(x(i).FormalCharge), newline];
        
    else
        
        y = [y, x(i).ReferenceElement.letter, ': +', num2str(x(i).FormalCharge), newline];
    end
    
    
end

end