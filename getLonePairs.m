function y=getLonePairs(x,y)

y=(getTotalValence(x,y)-(num_bonds(x,y)*2))/2;
