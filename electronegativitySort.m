function y=electronegativitySort(x)
% This function will be called to rank the electronegativity of the
% elements in the compound

run=true;
while run
    run=false;
    for i=2:length(x)
        if x(i).electronegativity<x(i-1).electronegativity
            right=x(i-1);
            left=x(i);
            x(i-1)=left;
            x(i)=right;
            run=true;
        end
    end
end
for i=1:length(x)
    electroRank(i)=x(i).letter;
end
z=electroRank;

%Were going on a H and F hunt. And we know how to weed them out!
NotCentral(1) = -1;
NotCentralStep=0;
for i=1:length(z)
    if strcmp(z(i),'H') || strcmp(z(i), 'F')
        NotCentralStep=NotCentralStep+1;
        NotCentral(NotCentralStep)=z(i);
    else YesCentral(i)=z(i);
    end
end
for i=1:length(YesCentral)
    CentralRank(i)=YesCentral(i);
end

if NotCentral(1) ~= -1
    if length(NotCentral)==1
        CentralRank(length(CentralRank)+1)=NotCentral(1);
    elseif length(NotCentral)>1
        for i=(length(YesCentral)+1):(length(NotCentral)+length(YesCentral))
            CentralRank(i)=NotCentral(i-length(YesCentral));
        end
    end
end
y=takeOutSpaces(CentralRank);
end
