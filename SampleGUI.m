function varargout = SampleGUI(varargin)
% SAMPLEGUI MATLAB code for SampleGUI.fig
%      SAMPLEGUI, by itself, creates a new SAMPLEGUI or raises the existing
%      singleton*.
%
%      H = SAMPLEGUI returns the handle to a new SAMPLEGUI or the handle to
%      the existing singleton*.
%
%      SAMPLEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAMPLEGUI.M with the given input arguments.
%
%      SAMPLEGUI('Property','Value',...) creates a new SAMPLEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SampleGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SampleGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SampleGUI

% Last Modified by GUIDE v2.5 21-Apr-2017 09:28:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @SampleGUI_OpeningFcn, ...
    'gui_OutputFcn',  @SampleGUI_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SampleGUI is made visible.
function SampleGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SampleGUI (see VARARGIN)

% Choose default command line output for SampleGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SampleGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
load('elementInfo');
handles.CurrentCompound=[];
DisplayName=[];




% --- Outputs from this function are returned to the command line.
function varargout = SampleGUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hButton.
function hButton_Callback(hObject, eventdata, handles)
% hObject    handle to hButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('elementInfo');


a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='H';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end

% --- Executes on button press in nButton.
function nButton_Callback(hObject, eventdata, handles)
% hObject    handle to nButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='N';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end


% --- Executes on button press in oButton.
function oButton_Callback(hObject, eventdata, handles)
% hObject    handle to oButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='O';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end

% --- Executes on button press in fButton.
function fButton_Callback(hObject, eventdata, handles)
% hObject    handle to fButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='F';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end


% --- Executes on button press in cButton.
function cButton_Callback(hObject, eventdata, handles)
% hObject    handle to cButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='C';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end

% --- Executes on button press in pButton.
function pButton_Callback(hObject, eventdata, handles)
% hObject    handle to pButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='P';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end

% --- Executes on button press in sButton.
function sButton_Callback(hObject, eventdata, handles)
% hObject    handle to sButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(handles.numberOfAtomsText.String) + 1;

if (a <= 5)
    handles.numberOfAtomsText.String = num2str(a);
    DisplayName=handles.SneakyText.String;
    DisplayName(a)='S';
    handles.SneakyText.String=DisplayName;
    displayText(handles, DisplayName);
else
    handles.errorText.String = 'Maximum Number of Atoms (5) Exceeded';
end
% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
goButtonF(handles);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurrentCompound = [];
clearButtonF(handles);



function numberOfAtomsText_Callback(hObject, eventdata, handles)
% hObject    handle to numberOfAtomsText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numberOfAtomsText as text
%        str2double(get(hObject,'String')) returns contents of numberOfAtomsText as a double


% --- Executes during object creation, after setting all properties.
function numberOfAtomsText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberOfAtomsText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plusChargeButton.
function plusChargeButton_Callback(hObject, eventdata, handles)
% hObject    handle to plusChargeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(handles.SneakyElectrons.String);
handles.SneakyElectrons.String=num2str(a+1);
DisplayName=handles.SneakyText.String;
displayText(handles, DisplayName);


% --- Executes on button press in minusChargeButton.
function minusChargeButton_Callback(hObject, eventdata, handles)
% hObject    handle to minusChargeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(handles.SneakyElectrons.String);
handles.SneakyElectrons.String=num2str(a-1);
DisplayName=handles.SneakyText.String;
displayText(handles, DisplayName);
