function varargout = fire_the_cannon_game(varargin)
% FIRE_THE_CANNON_GAME MATLAB code for fire_the_cannon_game.fig
%      FIRE_THE_CANNON_GAME, by itself, creates a new FIRE_THE_CANNON_GAME or raises the existing
%      singleton*.
%
%      H = FIRE_THE_CANNON_GAME returns the handle to a new FIRE_THE_CANNON_GAME or the handle to
%      the existing singleton*.
%
%      FIRE_THE_CANNON_GAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRE_THE_CANNON_GAME.M with the given input arguments.
%
%      FIRE_THE_CANNON_GAME('Property','Value',...) creates a new FIRE_THE_CANNON_GAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fire_the_cannon_game_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fire_the_cannon_game_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fire_the_cannon_game

% Last Modified by GUIDE v2.5 08-Aug-2020 20:49:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fire_the_cannon_game_OpeningFcn, ...
                   'gui_OutputFcn',  @fire_the_cannon_game_OutputFcn, ...
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


% --- Executes just before fire_the_cannon_game is made visible.
function fire_the_cannon_game_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fire_the_cannon_game (see VARARGIN)


clc;
handles.target = 100*rand + 50;
plot(handles.target,0,'d');
axis([0 handles.target*1.25 0 handles.target*0.35]);
hold on
% Choose default command line output for fire_the_cannon_game
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fire_the_cannon_game wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fire_the_cannon_game_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editvel_Callback(hObject, eventdata, handles)
% hObject    handle to editvel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editvel as text
%        str2double(get(hObject,'String')) returns contents of editvel as a double


% --- Executes during object creation, after setting all properties.
function editvel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editvel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editang_Callback(hObject, eventdata, handles)
% hObject    handle to editang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editang as text
%        str2double(get(hObject,'String')) returns contents of editang as a double


% --- Executes during object creation, after setting all properties.
function editang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushfire.
function pushfire_Callback(hObject, eventdata, handles)
% hObject    handle to pushfire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vel = str2num(get(handles.editvel,'string'));
angle = str2num(get(handles.editang,'string'));


t = 0:0.01:10000;

x = t*vel*cosd(angle) + 0.5*0*t.^2;
y = t*vel*sind(angle) + 0.5*(-9.8)*t.^2;

postime = find(y>=0);

nx = x(postime);
ny = y(postime);

comet(nx,ny)

if abs(handles.target - max(nx)) < 10
    
    % 10 can be adjusted to make the game tougher
    set(handles.result,'string','hit! you are good at this');
    playagain = menu('Do you to play again','Yesss','Noooooooooo');
    % playagain is zero if you exit
    % playagain is 1 for yesss
    % playagain is 1 for Noooooooo
    if playagain == 1
        close
        fire_the_cannon_game
    else
        close
    end
elseif abs(handles.target - max(nx) < 20)
    
    set(handles.result,'string',' you were close!!!')
else
    set(handles.result,'string',' ohh no, you can do better')
end
