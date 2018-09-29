function dispAA(q)
for p = 1:length(q)
    disp([q(p).ReferenceElement.letter, ': ']);
    disp(q(p));
end

end