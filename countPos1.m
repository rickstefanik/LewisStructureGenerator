function y =countPos1(x)
count = 0;


for i=1:length(x)
    if x(i) == 1
        count = count + 1;
    end
    
end


y = count;

end