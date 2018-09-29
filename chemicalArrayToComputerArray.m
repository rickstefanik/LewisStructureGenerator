function y = chemicalArrayToComputerArray(x,y1)

load('elementInfo.mat');


if length(x) == 1
    numLonePairs = getLonePairs(x,y1);
    
    y(1) = ActualAtom(x(1), 1);
    y(1).BondArray = [0, 0, 0, 0];
    y(1).idArray = [0, 0, 0 0];
    y(1).Hybridization = 'None';
    y(1).FormalCharge = 0;
    y(1).LonePairs = numLonePairs;
    
    
    
end


if length(x) == 2
    
    numBonds = num_bonds(x,y1);
    numLonePairs = getLonePairs(x,y1);
    
 %   disp(['Lone Pairs: ', num2str(numLonePairs)]);
    
    
    y(1) = ActualAtom(x(1), 1);
    
    y(1).BondArray = [0, numBonds, 0, 0];
    y(1).idArray = [0, 2, 0 0];
    
    y(2) = ActualAtom(x(2), 2);
    
    y(2).BondArray = [0, 0, 0, numBonds];
    y(2).idArray = [0, 0, 0, 1];
    
    
    if numLonePairs >= 3
        y(1).LonePairs = numLonePairs;
        
        numLonePairs = numLonePairs - y(1).LonePairs;
        
        y(2).LonePairs = numLonePairs;
    else
        
        y(1).LonePairs = numLonePairs;
        y(2).LonePairs = 0;
    end
    
    while areAllBondArraysValid(y) == false
        y(1).LonePairs = y(1).LonePairs - 1;
        y(2).LonePairs = y(2).LonePairs + 1;
        
        if ((y(1).LonePairs < 0) || (y(2).LonePairs <0))
            break;
        end
        
        
    end
    
    for i=1:length(y)
        y(i).FormalCharge = getFormalCharge(y(i));
        y(i).Hybridization = getHybridization(y(i));
    end
    
    
    
end

if length(x) == 3
    
    sorted1 = electronegativitySort(x);
    
    sorted = StringToChemArray(sorted1);
    
    % sorted is an array of Elements from least to greatest electronegativity
    
    % Central atom given iD 1
    
    y(1) = ActualAtom(sorted(1), 1);
    
    y(2) = ActualAtom(sorted(2), 2);
    
    y(3) = ActualAtom(sorted(3), 3);
    
    numBonds = num_bonds(x,y1);
    numLonePairs = getLonePairs(x,y1);
    
    y(1).idArray = [0, 3, 0, 2];
    
    y(2).idArray = [0, 1, 0, 0];
    
    y(3).idArray = [0, 0, 0, 1];
    
    
    
    
    
    
    
    
    switch numBonds
        
        case 2
            y(1).BondArray = [0 1 0 1];
            y(2).BondArray = [0 1 0 0];
            y(3).BondArray = [0 0 0 1];
            
            
            Solved = false;
            for f1=0:3
                for f2=0:3
                    for f3=0:3
                        
                        if (f1+f2+f3 == numLonePairs)
                            y(1).LonePairs = f1;
                            y(2).LonePairs = f2;
                            y(3).LonePairs = f3;
                            
                            if (areAllBondArraysValid(y) == true)
                                Solved = true;
                                break;
                            end
                            
                        end
                        %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                    end
                    if Solved == true
                        break;
                    end
                    
                end
                if Solved == true
                    break;
                end
            end
            
            
            
        case 3
            y(1).BondArray = [0 2 0 1];
            y(2).BondArray = [0 1 0 0];
            y(3).BondArray = [0 0 0 2];
            
            
            
            
            Solved = false;
            for f1=0:3
                for f2=0:3
                    for f3=0:3
                        
                        if (f1+f2+f3 == numLonePairs)
                            y(1).LonePairs = f1;
                            y(2).LonePairs = f2;
                            y(3).LonePairs = f3;
                            
                            if (areAllBondArraysValid(y) == true)
                                Solved = true;
                                break;
                            end
                            
                        end
                        %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                    end
                    if Solved == true
                        break;
                    end
                    
                end
                if Solved == true
                    break;
                end
            end
            
            
            
            
            
            
            
            if areAllBondArraysValid(y) == false
                
                y(1).BondArray = [0 1 0 2];
                y(2).BondArray = [0 2 0 0];
                y(3).BondArray = [0 0 0 1];
                
                
                
                
                Solved = false;
                for f1=0:3
                    for f2=0:3
                        for f3=0:3
                            
                            if (f1+f2+f3 == numLonePairs)
                                y(1).LonePairs = f1;
                                y(2).LonePairs = f2;
                                y(3).LonePairs = f3;
                                
                                if (areAllBondArraysValid(y) == true)
                                    Solved = true;
                                    break;
                                end
                                
                            end
                            %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                        end
                        if Solved == true
                            break;
                        end
                        
                    end
                    if Solved == true
                        break;
                    end
                end
                
                
                
                
                
            end
            
        case 4
            y(1).BondArray = [0 3 0 1];
            y(2).BondArray = [0 1 0 0];
            y(3).BondArray = [0 0 0 3];
            
            
            
            Solved = false;
            for f1=0:3
                for f2=0:3
                    for f3=0:3
                        
                        if (f1+f2+f3 == numLonePairs)
                            y(1).LonePairs = f1;
                            y(2).LonePairs = f2;
                            y(3).LonePairs = f3;
                            
                            if (areAllBondArraysValid(y) == true)
                                Solved = true;
                                break;
                            end
                            
                        end
                        %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                    end
                    if Solved == true
                        break;
                    end
                    
                end
                if Solved == true
                    break;
                end
            end
            
            
            
            if areAllBondArraysValid(y) == false
                
                y(1).BondArray = [0 2 0 2];
                y(2).BondArray = [0 2 0 0];
                y(3).BondArray = [0 0 0 2];
                
                
                Solved = false;
                for f1=0:3
                    for f2=0:3
                        for f3=0:3
                            
                            if (f1+f2+f3 == numLonePairs)
                                y(1).LonePairs = f1;
                                y(2).LonePairs = f2;
                                y(3).LonePairs = f3;
                                
                                if (areAllBondArraysValid(y) == true)
                                    Solved = true;
                                    break;
                                end
                                
                            end
                            %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                        end
                        if Solved == true
                            break;
                        end
                        
                    end
                    if Solved == true
                        break;
                    end
                end
                
                
                
            end
            
            if areAllBondArraysValid(y) == false
                
                y(1).BondArray = [0 1 0 3];
                y(2).BondArray = [0 3 0 0];
                y(3).BondArray = [0 0 0 1];
                
                
                
                
                Solved = false;
                for f1=0:3
                    for f2=0:3
                        for f3=0:3
                            
                            if (f1+f2+f3 == numLonePairs)
                                y(1).LonePairs = f1;
                                y(2).LonePairs = f2;
                                y(3).LonePairs = f3;
                                
                                if (areAllBondArraysValid(y) == true)
                                    Solved = true;
                                    break;
                                end
                                
                            end
                            %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                        end
                        if Solved == true
                            break;
                        end
                        
                    end
                    if Solved == true
                        break;
                    end
                end
                
                
                
                
            end
            
    end
    
    
    
    
    
    
    
    for i=1:length(y)
        y(i).FormalCharge = getFormalCharge(y(i));
        y(i).Hybridization = getHybridization(y(i));
        
    end
    
    
    
end





if (length(x) == 4)
    
    sorted1 = electronegativitySort(x);
    
    sorted = StringToChemArray(sorted1);
    
    % sorted is an array of Elements from least to greatest electronegativity
    
    % Central atom given iD 1
    
    y(1) = ActualAtom(sorted(1), 1);
    
    y(2) = ActualAtom(sorted(2), 2);
    
    y(3) = ActualAtom(sorted(3), 3);
    
    y(4) = ActualAtom(sorted(4), 4);
    
    numBonds = num_bonds(x, y1);
    numLonePairs = getLonePairs(x, y1);
    
    y(1).idArray = [2, 3, 0, 4];
    
    y(2).idArray = [0, 0, 1, 0];
    
    y(3).idArray = [0, 0, 0, 1];
    
    y(4).idArray = [0, 1, 0, 0];
    
    switch numBonds
        case 3
            
            y(1).BondArray = [1, 1, 0, 1];
            y(2).BondArray = [0, 0, 1, 0];
            y(3).BondArray = [0, 0, 0, 1];
            y(4).BondArray = [0, 1, 0, 0];
            
            Solved = false;
            for f1=0:3
                for f2=0:3
                    for f3=0:3
                        for f4=0:3
                            if (f1+f2+f3+f4 == numLonePairs)
                                y(1).LonePairs = f1;
                                y(2).LonePairs = f2;
                                y(3).LonePairs = f3;
                                y(4).LonePairs = f4;
                                if (areAllBondArraysValid(y) == true)
                                    Solved = true;
                                    break;
                                end
                            end
                            %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                        end
                        if Solved == true
                            break;
                        end
                    end
                    if Solved == true
                        break;
                    end
                end
                if Solved == true
                    break;
                end
            end
            
            
            
            
        case 4
            y(1).BondArray = [2, 1, 0, 1];
            y(2).BondArray = [0, 0, 2, 0];
            y(3).BondArray = [0, 0, 0, 1];
            y(4).BondArray = [0, 1, 0, 0];
            
            
            Solved = false;
            for f1=0:3
                for f2=0:3
                    for f3=0:3
                        for f4=0:3
                            if (f1+f2+f3+f4 == numLonePairs)
                                y(1).LonePairs = f1;
                                y(2).LonePairs = f2;
                                y(3).LonePairs = f3;
                                y(4).LonePairs = f4;
                                if (areAllBondArraysValid(y) == true)
                                    Solved = true;
                                    break;
                                end
                            end
                            %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                        end
                        if Solved == true
                            break;
                        end
                    end
                    if Solved == true
                        break;
                    end
                end
                if Solved == true
                    break;
                end
            end
            
            
            
            
            if areAllBondArraysValid(y) == false
                y(1).BondArray = [1, 2, 0, 1];
                y(2).BondArray = [0, 0, 1, 0];
                y(3).BondArray = [0, 0, 0, 2];
                y(4).BondArray = [0, 1, 0, 0];
                
                
                
                Solved = false;
                for f1=0:3
                    for f2=0:3
                        for f3=0:3
                            for f4=0:3
                                if (f1+f2+f3+f4 == numLonePairs)
                                    y(1).LonePairs = f1;
                                    y(2).LonePairs = f2;
                                    y(3).LonePairs = f3;
                                    y(4).LonePairs = f4;
                                    if (areAllBondArraysValid(y) == true)
                                        Solved = true;
                                        break;
                                    end
                                end
                                %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                            end
                            if Solved == true
                                break;
                            end
                        end
                        if Solved == true
                            break;
                        end
                    end
                    if Solved == true
                        break;
                    end
                end
                
                
                
            end
            
            if areAllBondArraysValid(y) == false
                y(1).BondArray = [1, 1, 0, 2];
                y(2).BondArray = [0, 0, 1, 0];
                y(3).BondArray = [0, 0, 0, 1];
                y(4).BondArray = [0, 2, 0, 0];
                
                
                
                
                
                Solved = false;
                for f1=0:3
                    for f2=0:3
                        for f3=0:3
                            for f4=0:3
                                if (f1+f2+f3+f4 == numLonePairs)
                                    y(1).LonePairs = f1;
                                    y(2).LonePairs = f2;
                                    y(3).LonePairs = f3;
                                    y(4).LonePairs = f4;
                                    if (areAllBondArraysValid(y) == true)
                                        Solved = true;
                                        break;
                                    end
                                end
                                %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                            end
                            if Solved == true
                                break;
                            end
                        end
                        if Solved == true
                            break;
                        end
                    end
                    if Solved == true
                        break;
                    end
                end
                
            end
            
            
            
            
    end
    
    for i=1:length(y)
        y(i).FormalCharge = getFormalCharge(y(i));
        y(i).Hybridization = getHybridization(y(i));
    end
    
end





if (length(x) == 5)
    
    
    
    
    sorted1 = electronegativitySort(x);
    
    sorted = StringToChemArray(sorted1);
    
    % sorted is an array of Elements from least to greatest electronegativity
    
    % Central atom given iD 1
    
    y(1) = ActualAtom(sorted(1), 1);
    
    y(2) = ActualAtom(sorted(2), 2);
    
    y(3) = ActualAtom(sorted(3), 3);
    
    y(4) = ActualAtom(sorted(4), 4);
    
    y(5) = ActualAtom(sorted(5), 5);
    
    numBonds = num_bonds(x, y1);
    
    y(1).idArray = [2, 3, 4, 5];
    
    y(2).idArray = [0, 0, 1, 0];
    
    y(3).idArray = [0, 0, 0, 1];
    
    y(4).idArray = [1, 0, 0, 0];
    
    y(5).idArray = [0, 1, 0, 0];
    
    switch numBonds
        
        case 4
            
            y(1).BondArray = [1, 1, 1, 1];
            y(2).BondArray = [0, 0, 1, 0];
            y(3).BondArray = [0, 0, 0, 1];
            y(4).BondArray = [1, 0, 0, 0];
            y(5).BondArray = [0, 1, 0, 0];
            
            
    end
    
    
    numLonePairs = getLonePairs(x, y1);
    Solved = false;
    
    
    for f1=0:3
        for f2=0:3
            for f3=0:3
                for f4=0:3
                    for f5=0:3
                        
                        if (f1+f2+f3+f4+f5 == numLonePairs)
                            y(1).LonePairs = f1;
                            y(2).LonePairs = f2;
                            y(3).LonePairs = f3;
                            y(4).LonePairs = f4;
                            y(5).LonePairs = f5;
                            
                            if (areAllBondArraysValid(y) == true)
                                Solved = true;
                                break;
                            end
                            
                        end
                        %              disp(['f1: ', num2str(f1), ' f2: ', num2str(f2), ' f3: ', num2str(f3)]);
                    end
                    if Solved == true
                        break;
                    end
                    
                end
                if Solved == true
                    break;
                end
                
                
                
                
            end
            if Solved == true
                break;
            end
        end
        if Solved == true
            break;
        end
    end
    
    
    
    
    for i=1:length(y)
        y(i).FormalCharge = getFormalCharge(y(i));
        y(i).Hybridization = getHybridization(y(i));
    end
    
    
end





if areAllBondArraysValid(y) == false
%    disp ('NOT ALL BOND ARRAYS ARE VALID');
    for i=1:length(y)
        y(i).BondArray = [0 0 0 0];
        y(i).FormalCharge = 0;
        y(i).Hybridization = 'None';
    end
end
end


