function varargout = tugasgui5(varargin)
% TUGASGUI5 MATLAB code for tugasgui5.fig
%      TUGASGUI5, by itself, creates a new TUGASGUI5 or raises the existing
%      singleton*.
%
%      H = TUGASGUI5 returns the handle to a new TUGASGUI5 or the handle to
%      the existing singleton*.
%
%      TUGASGUI5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGASGUI5.M with the given input arguments.
%
%      TUGASGUI5('Property','Value',...) creates a new TUGASGUI5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugasgui5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugasgui5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugasgui5

% Last Modified by GUIDE v2.5 29-Sep-2021 02:16:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugasgui5_OpeningFcn, ...
                   'gui_OutputFcn',  @tugasgui5_OutputFcn, ...
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


% --- Executes just before tugasgui5 is made visible.
function tugasgui5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugasgui5 (see VARARGIN)

% Choose default command line output for tugasgui5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

global p;
global q;

image1 = imread('image1.png');
image2 = imread('image2.png');

p = rgb2gray(image1);
q = rgb2gray(image2);

axes(handles.axes1);
imshow(p);

axes(handles.axes2);
imshow(q);

% UIWAIT makes tugasgui5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugasgui5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

axes(handles.axes3);
imshow(p + 170);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

axes(handles.axes3);
imshow(p - 35);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

axes(handles.axes3);
imshow(p * 0.8);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

axes(handles.axes3);
imshow(p / 0.8);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

r = p;
[kolom, baris] = size(r);

for x = 1 : kolom
    for y = 1 : baris
        if q(x, y) ~= 0
            r(x, y) = q(x, y);
        end
    end
end

axes(handles.axes3);
imshow(r);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

f = p;
[kolom, baris] = size(f);

for x = 1 : kolom
    for y = 1 : baris
        if f(x, y) ~= 0
            f(x, y) = q(x, y);
        end
    end
end

axes(handles.axes3);
imshow(f);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

bw1 = p > 55;
bw2 = q > 140;


axes(handles.axes1);
imshow(bw1);

axes(handles.axes2);
imshow(bw2);

s = bw1;
[kolom, baris] = size(s);

for x = 1 : kolom
    for y = 1 : baris
        if bw2 (x, y) ~= 0
            if s (x, y) == 0
                s (x, y) = 1;
            else
                s (x, y) = 0;
            end
        end
    end
end
axes(handles.axes3);
imshow(s);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

bw1 = p > 55;
bw2 = q > 140;


axes(handles.axes1);
imshow(bw1);

axes(handles.axes2);
imshow(bw2);

d = bw1;
[kolom, baris] = size(d);

for x = 1 : kolom
    for y = 1 : baris
        if d(x, y) == 0
            d(x, y) = 1;
        else
            d(x, y) = 0;
        end
    end
end

axes(handles.axes3);
imshow(d);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

[kolom, baris] = size(p);

Sm = 1;
Sn = 2;
i = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        x2 = x * Sm;
        y2 = y * Sn;
        i(x2, y2) = p(x, y);
    end
end

axes(handles.axes3);
imshow(uint8(i));



% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p;
global q;

axes(handles.axes1);
imshow(p);
axes(handles.axes2);
imshow(q);

[kolom, baris] = size(p);
u = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        x2 = kolom + 1 - x;
        y2 = y;
        u(x2, y2) = p(x, y);
    end
end

axes(handles.axes3);
imshow(uint8(u));

