function y = takeOutSpaces(x)

count = 1;
for i=1:length(x)
    if (isElementString(x(i)))
        y(count) = x(i);
        count = count + 1;
    end
    
    
end


end