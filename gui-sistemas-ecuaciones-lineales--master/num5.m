function varargout = num5(varargin)
% NUM5 MATLAB code for num5.fig
%      NUM5, by itself, creates a new NUM5 or raises the existing
%      singleton*.
%
%      H = NUM5 returns the handle to a new NUM5 or the handle to
%      the existing singleton*.
%
%      NUM5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NUM5.M with the given input arguments.
%
%      NUM5('Property','Value',...) creates a new NUM5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before num5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to num5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help num5

% Last Modified by GUIDE v2.5 30-Jun-2016 21:00:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @num5_OpeningFcn, ...
                   'gui_OutputFcn',  @num5_OutputFcn, ...
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


% --- Executes just before num5 is made visible.
function num5_OpeningFcn(hObject, eventdata, handles, varargin)
global tamano columnas filas
set(handles.tabla,'Data',tamano);
set(handles.tabla,'ColumnEditable',true(1,columnas));

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to num5 (see VARARGIN)

% Choose default command line output for num5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes num5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = num5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global x A B
A=str2double(get(handles.tabla,'Data'));
mostrar
close(handles.figure1)


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
