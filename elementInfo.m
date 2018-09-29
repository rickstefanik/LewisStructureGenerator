%elementInfo.m
% This program will provide the basic information baout the subset of
% elements that will be used by the program. Basically our pocket pTable

global H
H.name = 'Hydrogen';
H.electrons = 1;
H.valence = valence(H.electrons);
H.maxElectrons = 2;
H.bonds = [0 , 0, 0, 0];
H.molarMass = 1.0079;
H.radius=31;
H.letter='H';
H.electronegativity= 2.20;
H.maxBonds = 1;
H.maxLonePairs = 0;
H.colorArray = [1 1 1];


global C
C.name = 'Carbon';
C.electrons = 6;
C.valence = valence(C.electrons);
C.maxElectrons = 8;
C.bonds = [0, 0, 0, 0];
C.molarMass = 12.011;
C.radius=76;
C.letter='C';
C.electronegativity= 2.55;
C.maxBonds = 3;
C.maxLonePairs = 3;
C.colorArray = [0 0 0];



global N
N.name = 'Nitrogen';
N.electrons = 7;
N.valence = valence(N.electrons);
N.maxElectrons = 8;
N.bonds = [0, 0, 0, 0];
N.molarMass = 14.0067;
N.radius=71;
N.letter='N';
N.electronegativity= 3.04;
N.maxBonds = 3;
N.maxLonePairs = 3;
N.colorArray = [.2 .8 1];

global O
O.name = 'Oxygen';
O.electrons = 8;
O.valence = valence(O.electrons);
O.maxElectrons = 8;
O.bonds = [0, 0, 0, 0];
O.molarMass = 15.994;
O.radius=66;

O.letter='O';
O.electronegativity= 3.44;
O.maxBonds = 3;
O.maxLonePairs = 3;
O.colorArray = [1 0 0];


global F
F.name = 'Fluorine';
F.electrons = 9;
F.valence = valence(F.electrons);
F.maxElectrons = 8;
F.bonds = [0, 0, 0, 0];
F.molarMass = 18.998;
F.radius=57;
F.letter='F';
F.electronegativity=3.98;
F.maxBonds = 3;
F.maxLonePairs = 3;
F.colorArray = [0 .6 0];



global P
P.name = 'Phosphorus';
P.electrons = 15;
P.valence = valence(P.electrons);
P.maxElectrons = 8;
P.bonds = [0, 0, 0, 0];
P.molarMass = 30.974;
P.radius=107;
P.letter='P';
P.electronegativity=2.19;
P.maxBonds = 3;
P.maxLonePairs = 3;
P.colorArray = [.6 0 .8];



global S
S.name = 'Sulfur';
S.electrons = 16;
S.valence = valence(S.electrons);
S.maxElectrons = 8;
S.bonds = [0, 0, 0, 0];
S.molarMass = 32.065;
S.radius=105;
S.letter='S';
S.electronegativity=2.58;
S.maxBonds = 3;
S.maxLonePairs = 3;
S.colorArray = [1 1 0];




global Cl
Cl.name = 'Chlorine';
Cl.electrons = 17;
Cl.valence = valence(Cl.electrons);
Cl.maxElectrons = 8;
Cl.bonds = [0, 0, 0, 0];
Cl.molarMass = 35.453;
Cl.radius=79;
Cl.letter='Cl';
Cl.electronegativity=3.16;
Cl.maxBonds = 3;
Cl.maxLonePairs = 3;
Cl.colorArray = [.5 .5 .5];
OurPTable=['H', 'C', 'O', 'N', 'F', 'P', 'S', 'Cl'];

save('elementInfo');