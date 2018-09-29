function y = isElementString(x)
y = false;

if strcmpi(x, 'H')
    y = true;
end
if strcmpi(x, 'C')
    y = true;
end
if strcmpi(x, 'N')
    y = true;
end
if strcmpi(x, 'O')
    y = true;
end
if strcmpi(x, 'F')
    y = true;
end
if strcmpi(x, 'P')
    y = true;
end
if strcmpi(x, 'S')
    y = true;
end

end