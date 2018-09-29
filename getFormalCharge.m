function y = getFormalCharge(x)

load('elementInfo.mat');

%This function is going to assign formal charge for each atom of the
%compound

eCounted=0;
for j=1:length(x.BondArray)
    if x.BondArray(j)>0
        eCounted=eCounted+x.BondArray(j);
    end
end
if x.LonePairs>0
    eCounted=eCounted+(2*(x.LonePairs));
end
FormalCharge=(x.ReferenceElement.valence-eCounted);
y = FormalCharge;
end