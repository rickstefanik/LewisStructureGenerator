function y = StringToChemArray(x)

load('elementInfo');


if (length(x) == 0)
    
    y = '';
    
else
    
    for i=1:length(x)
        switch x(i)
            
            case H.letter
                y(i) = H;
            case C.letter
                y(i) = C;
            case N.letter
                y(i) = N;
            case O.letter
                y(i) = O;
            case P.letter
                y(i) = P;
            case S.letter
                y(i) = S;
            case F.letter
                y(i) = F;
                
                
        end
        
    end
    
    
    
    
end