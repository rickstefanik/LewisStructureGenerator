function y = areAllBondArraysValid(x)

isValid = true;

for i=1:length(x)
    if isValidBondArray(x(i)) == false
        isValid = false;
    end
end

y = isValid;
end