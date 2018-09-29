function y = getPercentComp(x)

y = '';

load('elementInfo.mat');


if (length(x) ~= 0)
    
    
    
    totalMass = molarMass(x);
    
    numH=0;
    numC=0;
    numO=0;
    numN=0;
    numF=0;
    numP=0;
    numS=0;
    
    for i=1:length(x)
        
        switch x(i).letter
            
            
            case 'C'
                numC = numC + C.molarMass;
            case 'H'
                numH = numH + H.molarMass;
            case 'O'
                numO = numO + O.molarMass;
            case 'N'
                numN = numN + N.molarMass;
            case 'F'
                numF = numF + F.molarMass;
            case 'S'
                numS = numS + S.molarMass;
            case 'P'
                numP = numP + P.molarMass;
                
                
        end
        
        
    end
    
    
    massArray=[numC, numH, numO, numN, numF, numP, numS];
    empericalLetters=['C' 'H' 'O' 'N' 'F' 'P' 'S'];
    
    for i=1:length(massArray)
        if massArray(i) > 0
            y = [y, empericalLetters(i), ': ',num2str((massArray(i) / totalMass )* 100 ), '%', newline];
        end
        
        
    end
    y(length(y)) = ' ';
    
end


end