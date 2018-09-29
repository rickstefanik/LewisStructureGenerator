function y = HybridizationText(x)

load('elementInfo.mat');


y = [x(1).ReferenceElement.letter, ': ', x(1).Hybridization];

end