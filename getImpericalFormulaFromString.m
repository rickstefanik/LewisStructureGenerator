function y=getImpericalFormulaFromString(x)

load('elementInfo');


emperical='';
numH=0;
numC=0;
numO=0;
numN=0;
numF=0;
numP=0;
numS=0;
for i=1:length(x)
    switch x(i)
        case 'H'
            numH=numH+1;
        case 'C'
            numC=numC+1;
        case 'O'
            numO=numO+1;
        case 'N'
            numN=numN+1;
        case 'F'
            numF=numF+1;
        case 'S'
            numS=numS+1;
        case 'P'
            numP=numP+1;
    end
end

empericalArray=[numC, numN, numH, numP, numS, numO, numF];
empericalLetters=['C' 'N' 'H' 'P' 'S' 'O' 'F'];
for i=1:length(empericalArray)
    if ~empericalArray(i)==0
        emperical=[emperical,empericalLetters(i)];
        if empericalArray(i)>1
            emperical=[emperical,num2str(empericalArray(i))];
        end
    end
end
y=emperical;

