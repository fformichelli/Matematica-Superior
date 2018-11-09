function varargout = mostrar(varargin)

% RESULTADO MATLAB code for resultado.fig
%      RESULTADO, by itself, creates a new RESULTADO or raises the existing
%      singleton*.
%
%      H = RESULTADO returns the handle to a new RESULTADO or the handle to
%      the existing singleton*.
%
%      RESULTADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADO.M with the given input arguments.
%
%      RESULTADO('Property','Value',...) creates a new RESULTADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mostrar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mostrar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultado

% Last Modified by GUIDE v2.5 01-Jul-2016 18:04:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mostrar_OpeningFcn, ...
                   'gui_OutputFcn',  @mostrar_OutputFcn, ...
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


% --- Executes just before resultado is made visible.
function mostrar_OpeningFcn(hObject, eventdata, handles, varargin)
global x A columnas filas
if columnas-1 > filas
    set(handles.resultado,'string','El sistema tiene un numero indeterminado de soluciones, el # de incognitas es > al numero de ecuaciones');
else
    x=rref(A);
    if x(filas,columnas-1)==0 &&  x(filas,columnas)~=0
        set(handles.resultado,'string','Sistema inconsistente, no tiene solucion. (0 = n) donde n > 0');
    else if x(filas,columnas-1)==0
        set(handles.resultado,'string','Sistema indeterminado, número infinito de soluciones. (0 = 0)');
        else
            x=x(:,columnas);
            set(handles.resultado,'string',num2str(x));    
        end
    end
end

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultado (see VARARGIN)

% Choose default command line output for resultado
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultado wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mostrar_OutputFcn(hObject, eventdata, handles) 

% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
ecua
close(handles.figure1)

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
