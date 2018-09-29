function goButtonF(handles)
load('elementInfo.mat');

CurrentCompound = StringToChemArray(handles.SneakyText.String);


handles.molarMassText.String = ['Molar Mass: ', num2str(molarMass(CurrentCompound))];
handles.valenceElectronsText.String = ['Number of Valence Electrons: ', num2str(getTotalValence(CurrentCompound,handles.SneakyElectrons.String))];
%    handles.numberOfAtomsText.String = ['Number of Atoms: ', num2str(getNumberOfAtoms(handles.CurrentCompound))];
handles.numberOfUniqueElementsText.String = ['Number of Unique Elements: ', num2str(getNumberOfUniqueElements(CurrentCompound))];
handles.percentCompositionText.String = getPercentComp(CurrentCompound);
% handles.AssignedFormalText.String = FormalChargeText(CurrentCompound);
handles.errorText.String = '';
switch length(CurrentCompound)
    case 1
        graphSingle(CurrentCompound,handles.SneakyElectrons.String,handles);
        
    case 2
        graphDiatomic(CurrentCompound,handles.SneakyElectrons.String,handles);
    case 3
        LinearGraphingTest2(CurrentCompound,handles.SneakyElectrons.String,handles);
    case 4
        TrigonalPlanarGraphing(CurrentCompound,handles.SneakyElectrons.String,handles);
    case 5
        TetrahedralGraphing(CurrentCompound,handles.SneakyElectrons.String,handles);
    otherwise
        handles.errorText.String = 'A valid Lewis Structure could not be determined.';
        handles.hybridizationText.String = '';
        handles.AssignedFormalText.String = '';
end
end