function y = getNumberOfUniqueElements(x)

load('elementInfo');

count = 0;

n = 1;

SeenElements = '@';


if (length(x) == 0)
    y = 0;
    
    
else
    
    for i = 1:length(x)
        
        
        if ~(isCharInString(x(i).letter, SeenElements))
            count = count + 1;
            SeenElements(n) = x(i).letter;
            n = n + 1;
        end
        
        y = count;
    end
end


end