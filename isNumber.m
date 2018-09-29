function y = isNumber(x)
A = sscanf(x, '%d');
if (length(A) == 0)
    y = 0;
else
    y = 1;
end
end


