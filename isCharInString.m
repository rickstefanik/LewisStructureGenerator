function y = isCharInString(a, b)
load('elementInfo');

ret = false;

for i=1:length(b)
    
    if strcmp(a, b(i))
        
        ret = true;
    end
    
    
end
y = ret;
end