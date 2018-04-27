function varargout = guiLVQ(varargin)
% GUILVQ MATLAB code for guiLVQ.fig
%      GUILVQ, by itself, creates a new GUILVQ or raises the existing
%      singleton*.
%
%      H = GUILVQ returns the handle to a new GUILVQ or the handle to
%      the existing singleton*.
%
%      GUILVQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUILVQ.M with the given input arguments.
%
%      GUILVQ('Property','Value',...) creates a new GUILVQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiLVQ_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiLVQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiLVQ

% Last Modified by GUIDE v2.5 31-Mar-2018 20:18:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiLVQ_OpeningFcn, ...
                   'gui_OutputFcn',  @guiLVQ_OutputFcn, ...
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


% --- Executes just before guiLVQ is made visible.
function guiLVQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiLVQ (see VARARGIN)

% Choose default command line output for guiLVQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiLVQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiLVQ_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function sepal_length_Callback(hObject, eventdata, handles)
% hObject    handle to sepal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sepal_length as text
%        str2double(get(hObject,'String')) returns contents of sepal_length as a double
global a
a = str2double(get(handles.sepal_length, 'String'))

% --- Executes during object creation, after setting all properties.
function sepal_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sepal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function sepal_width_Callback(hObject, eventdata, handles)
% hObject    handle to sepal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sepal_width as text
%        str2double(get(hObject,'String')) returns contents of sepal_width as a double
global b
b = str2double(get(handles.sepal_width, 'String'))

% --- Executes during object creation, after setting all properties.
function sepal_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sepal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function petal_length_Callback(hObject, eventdata, handles)
% hObject    handle to petal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of petal_length as text
%        str2double(get(hObject,'String')) returns contents of petal_length as a double
global c
c = str2double(get(handles.petal_length, 'String'))

% --- Executes during object creation, after setting all properties.
function petal_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to petal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function petal_width_Callback(hObject, eventdata, handles)
% hObject    handle to petal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of petal_width as text
%        str2double(get(hObject,'String')) returns contents of petal_width as a double
global d
d = str2double(get(handles.petal_width, 'String'))

% --- Executes during object creation, after setting all properties.
function petal_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to petal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double
global hasil
hasil = target_uji_vektor;

% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in result_btn.
function result_btn_Callback(hObject, eventdata, handles)
% hObject    handle to result_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
global b
global c
global d
global hasil

%data uji
data_uji = [a;b;c;d]

%uji
load net_keluaran
hasil_uji = round(sim(net_keluaran,data_uji));
target_uji_vektor = vec2ind(hasil_uji);
hasil = target_uji_vektor
if hasil == 1
   hasil1 = 'IRIS SETOSA'
   set(handles.result, 'String', hasil1);
elseif hasil == 2
   hasil2 = 'IRIS VERSICOLOR'
   set(handles.result, 'String', hasil2);
else
   hasil3 = 'IRIS VIRGINICA'
   set(handles.result, 'String', hasil3);
end

% --- Executes on button press in clear_btn.
function clear_btn_Callback(hObject, eventdata, handles)
% hObject    handle to clear_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(findobj('style','edit'), 'String', {''});

% --- Executes on button press in exit_btn.
function exit_btn_Callback(hObject, eventdata, handles)
% hObject    handle to exit_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
close()
