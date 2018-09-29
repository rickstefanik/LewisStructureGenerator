function y=getTotalValence(x,y)


if (length(x) == 0)
    y =0;
    
else
    
    
    
    nE=-(str2double(y));
    for i=1:length(x)
        
        nE=nE+x(i).valence;
        
    end
    
    
    
    y=nE;
    
end

end