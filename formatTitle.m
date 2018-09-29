function y = formatTitle(x)

y = '';

count = 1;



isScript = false;

for i = 1:length(x)
    if isNumber(x(i))
        y(count) = '_';
        count = count + 1;
    end
    
    if (strcmp(x(i), '-') || strcmp(x(i), '+'))
        y(count) = ' ';
        count = count + 1;
        y(count) = '^';
        count = count + 1;
        
        isScript = true;
    end
    y(count) = x(i);
    count = count + 1;
        
end


if (isScript == true)
    lastChar = y(length(y));
    
    if (strcmp(lastChar, '-') || strcmp(lastChar, '+'))
        
    else
       y(length(y)) = ' '; 
       y(length(y) + 1) = '^';
       y(length(y) + 1) = lastChar;
    end
      
    
end


end