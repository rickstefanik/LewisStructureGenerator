function graphSingle(x1,y1,handles)

load('elementInfo.mat');

a = chemicalArrayToComputerArray(x1,y1);


isValid = true;

% for dfg = 1:length(a)
%    if (a(dfg).BondArray == [0 0 0 0])
%       isValid = false;
%       handles.errorText.String = 'A valid Lewis Structure could not be determined.';
%    end
%
% end


if isValid == true
    
    
    
    figure;
    
    handles.errorText.String = '';
    
    
    handles.AssignedFormalText.String = FormalChargeText(a);
    handles.hybridizationText.String = HybridizationText(a);
    
%    for i= 1:length(a)
%        disp(a(i).ReferenceElement.letter);
%        disp(a(i));
 %   end
    
    
    
    factor = 15;
    
    dLine = 2;
    
    
    d1 = a(1).ReferenceElement.radius / factor;
    
    
    distance=4; %equal to rho
    deg2rad=pi/180; %conversion factor
    radius=2;
    
    [x,y,z]=sphere;
    
    rho=[0];
    phi=[0];
    theta=[0];
    
    cx=rho.*sin(phi).*cos(theta); %finds the new center value for x
    cy=rho.*sin(phi).*sin(theta); %finds the new center value for y
    cz=rho.*cos(phi); %find the new center value of z
    radius=rho.*sin(phi);
    
    hold on
    
    atom(1)=surf(d1*(x+cx(1)),d1*(y+cy(1)),d1*(z+cz(1))); %find sphere 1
    
    
    for i=1:length(a)
        
        set(atom(i), 'FaceColor', a(i).ReferenceElement.colorArray);
        
    end
    
    
    save('DiatomicGraphingTest');
    
    % for i=1:length(a)
    %     for  j=1:length(a(i).BondArray)
    %         if (a(i).BondArray(j) ~= 0)
    %             switch a(i).BondArray(j)
    %
    %                 case 1
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cz(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))]);
    %
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %
    %
    %                 case 2
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ ((a(i).ReferenceElement.radius / factor)    * cz(i)) - (dLine/2), ((a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))) - (dLine/2)]);
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ ((a(i).ReferenceElement.radius / factor)    * cz(i)) + (dLine/2) , ((a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))) + (dLine/2)]);
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %
    %
    %                 case 3
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cz(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))]);
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %
    %
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ ((a(i).ReferenceElement.radius / factor)    * cz(i)) + dLine , ((a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))) + dLine]);
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %
    %                     bondlength = line([ (a(i).ReferenceElement.radius / factor)    * cx(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cx(a(i).idArray(j))], ...
    %                         [ (a(i).ReferenceElement.radius / factor)    * cy(i), (a(a(i).idArray(j)).ReferenceElement.radius / factor) * cy(a(i).idArray(j))],...
    %                         [ ((a(i).ReferenceElement.radius / factor)    * cz(i)) - dLine , ((a(a(i).idArray(j)).ReferenceElement.radius / factor) * cz(a(i).idArray(j))) - dLine]);
    %                     bondlength.LineWidth = 3;
    %                     bondlength.Color = 'k';
    %             end
    %
    %         end
    %
    %     end
    %
    % end
    %
    
    
    [hleg1, hobj1] = legend([atom(1)], a(1).ReferenceElement.letter);
    
    textobj = findobj(hobj1, 'type', 'text');
    set(textobj, 'Interpreter', 'latex', 'fontsize', 20);
    
    
    set(hleg1,'position',[.8 .8 .15 .15])
    
    set(gca,'xtick',[])
    set(gca,'xticklabel',[])
    set(gca,'ytick',[])
    set(gca,'yticklabel',[])
    set(gca,'ztick',[])
    set(gca,'zticklabel',[])
    
    title(formatTitle(handles.formulaText.String), 'FontSize', 20);
    
    view(0, 0);
    
    
    
    grid on
    axis equal
    
end

