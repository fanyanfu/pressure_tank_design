function varargout = matlab(varargin)
% MATLAB MATLAB code for matlab.fig
%      MATLAB, by itself, creates a new MATLAB or raises the existing
%      singleton*.
%
%      H = MATLAB returns the handle to a new MATLAB or the handle to
%      the existing singleton*.
%
%      MATLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB.M with the given input arguments.
%
%      MATLAB('Property','Value',...) creates a new MATLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab

% Last Modified by GUIDE v2.5 21-May-2018 15:11:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_OutputFcn, ...
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


% --- Executes just before matlab is made visible.
function matlab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab (see VARARGIN)

% Choose default command line output for matlab
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function  varargout = checkbox1_Callback(hObject, eventdata, handles)
set(handles.checkbox1, 'value', 1)
set(handles.checkbox2, 'value', 0)
set(handles.checkbox3, 'value', 0)
value=[1760,18900,0.00806,0.35];
save('value.mat','value');





% --- Executes on button press in checkbox2.
function  varargout = checkbox2_Callback(hObject, eventdata, handles)
set(handles.checkbox1, 'value', 0)
set(handles.checkbox2, 'value', 1)
set(handles.checkbox3, 'value', 0)
value=[478,7400,0.00281,0.35];
save('value.mat','value');

% --- Executes on button press in checkbox3.
function  varargout = checkbox3_Callback(hObject, eventdata, handles)
set(handles.checkbox1, 'value', 0)
set(handles.checkbox2, 'value', 0)
set(handles.checkbox3, 'value', 1)
value=[2000,10000,0.00408,0.35];
save('value.mat','value');
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
load('value.mat');
Bs=value(1);
E=value(2);
p=value(3);
u=value(4)
out=matlabchangti(Bs,E,p,u)
str1=num2str(out(1))
str2=num2str(out(2))
str3=num2str(out(3))
str4=num2str(out(4))
set(handles.edit1,'string',str1);
set(handles.edit2,'string',str2);
set(handles.edit3,'string',str3);
set(handles.edit4,'string',str4);



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



function edit2_Callback(hObject, eventdata, handles)

% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)

% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.edit1,'string','');
set(handles.edit2,'string','');
set(handles.edit3,'string','');
set(handles.edit4,'string','');


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
a=get(handles.checkbox1,'value');
b=get(handles.checkbox2,'value');
c=get(handles.checkbox3,'value');
if a==1
phone1=imread('11.jpg');
phone2=imread('12.jpg');
phone3=imread('13.jpg');
figure;
imshow(phone1);
figure;
imshow(phone2);
figure;
imshow(phone3);
end
if b==1
    phone1=imread('21.jpg');
phone2=imread('22.jpg');
phone3=imread('23.jpg');
figure;
imshow(phone1);
figure;
imshow(phone2);
figure;
imshow(phone3);
end
if c==1
phone1=imread('31.jpg');
phone2=imread('32.jpg');
phone3=imread('33.jpg');
figure;
imshow(phone1);
figure;
imshow(phone2);
figure;
imshow(phone3);
end
