function y=getHybridization(x)

% This fucntion will be used to get the hybridization of an atom


hybridCount=0;
for j=1:length(x.BondArray)
    if x.BondArray(j)>0
        hybridCount=hybridCount+1;
    end
end
if x.LonePairs>0
    hybridCount=hybridCount+x.LonePairs;
end
switch hybridCount
    case 1
        Hybridization='None';
    case 2
        Hybridization='sp';
    case 3
        Hybridization='sp2';
    case 4
        Hybridization='sp3';
    otherwise
        Hybridization='None';
end
y=Hybridization;
end


