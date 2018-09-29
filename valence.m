function y = valence(x)
ret = x;
if (x <= 0)
    y = -1;
elseif (x <= 2)
    y = ret;
elseif (x <= 10)
    y = ret - 2;
elseif (x <= 18)
    y = ret - 10;
end
end

