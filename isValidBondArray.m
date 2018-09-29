function y = isValidBondArray(x)

% Input is an ActualAtom object

load('elementInfo');

% In bond array, a negative two represents a lone pair,
% and a positive number represents the order of a bond.
% For hydrogen, the bond array must be all zeros except
% for a single one.  For all other atoms, the maximum
% number of electrons is eight, by the octet rule.

y = false;







if (strcmpi(x.ReferenceElement.letter, 'H'))
    
    
    if ((countPos1(x.BondArray) == 1) && x.LonePairs == 0)
        y =true;
    end
    
    
else
    count = 0;
    count = count + (x.LonePairs * 2);
    for i=1:length(x.BondArray)
        if x.BondArray(i) > 0
            count = count + (2 * x.BondArray(i));
        end
    end
    
    
    % Octet Rule
    if count == 8
        y = true;
    end
    
    
end


for f=1:length(x.BondArray)
   if ((x.BondArray(f) < 0) || (x.BondArray(f) > 3))  
      y = false; 
   end
    
end


end