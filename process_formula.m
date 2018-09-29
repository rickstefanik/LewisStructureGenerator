function y = process_formula(x)
% arrayPos = 1;
% for i=1:length(x)
%     if (isNumber(x(i)))
%         for j=1:(str2double((x(i) - 1)))
%             y(arrayPos) = x(i - 1);
%             arrayPos = arrayPos + 1;
%         end
%
%     else
%     y(arrayPos) = x(i);
%     arrayPos = arrayPos + 1;
%     end
% end

count = 1;
arrayPos = 1;
for i=1:length(x)
    
    %     if (~(isNumber(x(i)))  && (isUpperCase(x(i))))
    %         chemical(count) = x(i);
    %         count = count + 1;
    %
    %     elseif (~(isNumber(x(i))) && (~(isUpperCase(x(i)))))
    %         chemical(count) = x(i);
    %         count = count + 1;
    
    if (~(isNumber(x(i)))  && (isUpperCase(x(i))))
        chemical(count) = x(i);
        count = count + 1;
        
    elseif (isNumber(x(i)))
        for i=1:str2double(x(i))
            y(arrayPos) = chemical;
            arrayPos = arrayPos + 1;
        end
        chemical = ' ';
        count = 1;
    end
    
    if ((i == length(x))  && (~isNumber(x(i))))
        y(arrayPos) = chemical;
    end
end

end
