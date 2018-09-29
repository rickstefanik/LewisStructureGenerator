function y = num_bonds(x,y)
total_electrons = 0;
total_possible_electrons = 0;
for i=1:length(x)
    total_electrons = total_electrons + x(i).valence;
    total_possible_electrons = total_possible_electrons + x(i).maxElectrons;
end
total_electrons=total_electrons - str2double(y);
y = ((total_possible_electrons - total_electrons) / 2);
end



