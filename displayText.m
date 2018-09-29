function displayText(handles,x)
% This function will take into account the additional charges +/- that the
% user inputs and return an imperical formaula with addisional charges.

if strcmp(handles.SneakyElectrons.String,'0')
    handles.formulaText.String = getImpericalFormulaFromString(x);
elseif str2double(handles.SneakyElectrons.String)==1
    handles.formulaText.String = [getImpericalFormulaFromString(x),'+'];
elseif  str2double(handles.SneakyElectrons.String)==-1
    handles.formulaText.String = [getImpericalFormulaFromString(x),'-'];
elseif str2double(handles.SneakyElectrons.String)>0
    handles.formulaText.String = [getImpericalFormulaFromString(x),'+',handles.SneakyElectrons.String];
elseif str2double(handles.SneakyElectrons.String)<0
    handles.formulaText.String = [getImpericalFormulaFromString(x),handles.SneakyElectrons.String];
end
end