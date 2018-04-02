function varargout = EQ(varargin)
% EQ MATLAB code for EQ.fig
%      EQ, by itself, creates a new EQ or raises the existing
%      singleton*.
%
%      H = EQ returns the handle to a new EQ or the handle to
%      the existing singleton*.
%
%      EQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQ.M with the given input arguments.
%
%      EQ('Property','Value',...) creates a new EQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EQ_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EQ

% Last Modified by GUIDE v2.5 12-Apr-2017 16:18:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EQ_OpeningFcn, ...
                   'gui_OutputFcn',  @EQ_OutputFcn, ...
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


% --- Executes just before EQ is made visible.
function EQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EQ (see VARARGIN)

% Choose default command line output for EQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EQ_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_volume_Callback(hObject, eventdata, handles)
% hObject    handle to slider_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

V = (get(handles.slider_volume,'Value'));
 set(handles.editVolume,'String',num2str(V));
% --- Executes during object creation, after setting all properties.
function slider_volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editVolume_Callback(hObject, eventdata, handles)
% hObject    handle to editVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVolume as text
%        str2double(get(hObject,'String')) returns contents of editVolume as a double
set(handles.slider_volume,'Value',str2double(get(handles.editVolume,'string')));
% --- Executes during object creation, after setting all properties.
function editVolume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_reverb_Callback(hObject, eventdata, handles)
% hObject    handle to slider_reverb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_reverb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_reverb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_delay_Callback(hObject, eventdata, handles)
% hObject    handle to slider_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_pitch_Callback(hObject, eventdata, handles)
% hObject    handle to slider_pitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_pitch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_pitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in checkbox_whitenoise.
function checkbox_whitenoise_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_whitenoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_whitenoise


% --- Executes on button press in checkbox_reverb.
function checkbox_reverb_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_reverb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_reverb


% --- Executes on button press in checkbox_delay.
function checkbox_delay_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_delay


% --- Executes on button press in checkbox_pitch.
function checkbox_pitch_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_pitch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_pitch


% --- Executes on slider movement.
function slider_guitardistort_Callback(hObject, eventdata, handles)
% hObject    handle to slider_guitardistort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_guitardistort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_guitardistort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in checkbox_guitardistort.
function checkbox_guitardistort_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_guitardistort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_guitardistort


% --- Executes on slider movement.
function sliderwhitenoise_Callback(hObject, eventdata, handles)
% hObject    handle to sliderwhitenoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderwhitenoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderwhitenoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_gater_Callback(hObject, eventdata, handles)
% hObject    handle to slider_gater (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_gater_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_gater (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in checkbox_gater.
function checkbox_gater_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_gater (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_gater



function editband1_Callback(hObject, eventdata, handles)
% hObject    handle to editband1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editband1 as text
%        str2double(get(hObject,'String')) returns contents of editband1 as a double
set(handles.sliderband1,'Value',str2double(get(handles.editband1,'string')));

% --- Executes during object creation, after setting all properties.
function editband1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editband1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editband2_Callback(hObject, eventdata, handles)
% hObject    handle to editband2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editband2 as text
%        str2double(get(hObject,'String')) returns contents of editband2 as a double
set(handles.sliderband2,'Value',str2double(get(handles.editband2,'string')));

% --- Executes during object creation, after setting all properties.
function editband2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editband2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editband3_Callback(hObject, eventdata, handles)
% hObject    handle to editband3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editband3 as text
%        str2double(get(hObject,'String')) returns contents of editband3 as a double
set(handles.sliderband3,'Value',str2double(get(handles.editband3,'string')));

% --- Executes during object creation, after setting all properties.
function editband3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editband3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editband4_Callback(hObject, eventdata, handles)
% hObject    handle to editband4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editband4 as text
%        str2double(get(hObject,'String')) returns contents of editband4 as a double
set(handles.sliderband4,'Value',str2double(get(handles.editband4,'string')));

% --- Executes during object creation, after setting all properties.
function editband4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editband4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editband5_Callback(hObject, eventdata, handles)
% hObject    handle to editband5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editband5 as text
%        str2double(get(hObject,'String')) returns contents of editband5 as a double
set(handles.sliderband5,'Value',str2double(get(handles.editband5,'string')));

% --- Executes during object creation, after setting all properties.
function editband5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editband5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderband4_Callback(hObject, eventdata, handles)
% hObject    handle to sliderband4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s = (get(handles.sliderband4,'Value'));
set(handles.editband4,'String',num2str(s));

% --- Executes during object creation, after setting all properties.
function sliderband4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderband4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderband5_Callback(hObject, eventdata, handles)
% hObject    handle to sliderband5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s = (get(handles.sliderband5,'Value'));
set(handles.editband5,'String',num2str(s));

% --- Executes during object creation, after setting all properties.
function sliderband5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderband5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderband3_Callback(hObject, eventdata, handles)
% hObject    handle to sliderband3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s = (get(handles.sliderband3,'Value'));
set(handles.editband3,'String',num2str(s));

% --- Executes during object creation, after setting all properties.
function sliderband3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderband3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderband2_Callback(hObject, eventdata, handles)
% hObject    handle to sliderband2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s = (get(handles.sliderband2,'Value'));
set(handles.editband2,'String',num2str(s));

% --- Executes during object creation, after setting all properties.
function sliderband2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderband2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderband1_Callback(hObject, eventdata, handles)
% hObject    handle to sliderband1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s = (get(handles.sliderband1,'Value'));
set(handles.editband1,'String',num2str(s));

% --- Executes during object creation, after setting all properties.
function sliderband1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderband1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in playbutton.
function playbutton_Callback(hObject, eventdata, handles)
% hObject    handle to playbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
warn= warndlg('Wait...');
Fs=handles.data.Fs;
period=handles.data.period;
n=ceil(length(handles.data.loadedSignal)/(period*Fs));

handles.data.currentsignal=[];
handles.data.previoussignal=[];

global mixedSignal;
mixedSignal=[];
global isstop;
isstop=0;
global ispause;
ispause=0;
t=0;

close(warn);
                    for i=0:n-1
                        
                        if length(handles.data.currentsignal)~=0
                            handles.data.previoussignal=handles.data.currentsignal;
                            handles.data.currentplayer=audioplayer(handles.data.previoussignal,Fs);  
                        
                         
                       
                            if i>1
                               pause(period-toc-0.01);  
                               play(handles.data.currentplayer);
                               tic;
                               handles.data.previousplayer=handles.data.currentplayer; 
                            else                           
                               play(handles.data.currentplayer);
                               tic;
                               handles.data.previousplayer=handles.data.currentplayer; 
                            end
                     
                          
                        end
                        
                        if i>0
                         % Update spectrum plot
                        mode = 1; % Obtain mode of plotting the spectrum of the signal
                        plotspectrum(mixedSignal,handles.axes2,mode,Fs);
                        % Update time domain plot
                        axes(handles.axes1);
                        plot((1:length(mixedSignal))/Fs,mixedSignal/Fs); grid on;
                        end
                        t=0;
                        if i==n-1
                            handles.data.partsignal=handles.data.loadedSignal(i*period*Fs+1:end);
                        else
                            handles.data.partsignal=handles.data.loadedSignal(i*period*Fs+1:(i+1)*period*Fs);
                        end
                        guidata(hObject,handles);
                        if get(handles.listbox1,'value')==1
                            
                            mix(hObject,eventdata,handles); 
                            guidata(hObject,handles);
                        else
                            
                            mix2(hObject,eventdata,handles);
                            guidata(hObject,handles);
                        end
                        handles.data.currentsignal=mixedSignal;
                        
                    end

% --- Executes on button press in pausebutton.
function pausebutton_Callback(hObject, eventdata, handles)
% hObject    handle to pausebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ispause;
global isstop;

if isstop~=1
ispause=1;

pause(handles.data.previousplayer);
while ispause~=0
   pause(1);
end 
end


% --- Executes on button press in resumebutton.
function resumebutton_Callback(hObject, eventdata, handles)
% hObject    handle to resumebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ispause;

if ispause==1
ispause=0;

Fs=handles.data.Fs;
resume(handles.data.previousplayer);
pause((get(handles.data.previousplayer,'TotalSamples')-get(handles.data.previousplayer,'CurrentSample'))/Fs);

end
%resume(handles.data.previousplayer);

% --- Executes on button press in stopbutton.
function stopbutton_Callback(hObject, eventdata, handles)
% hObject    handle to stopbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global isstop;
isstop=1;
stop(handles.data.previousplayer);
while(isstop~=0)
   pause(1);
 end 

% --- Executes on button press in Load.
function Load_Callback(hObject, eventdata, handles)
% hObject    handle to Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
            % Load file
            filename = '';
            [filename,pathname] = uigetfile({'*.mp3';'*.wav';'*.ogg';'*.flac';'*.au';'*.m4a';'*.mp4'});
            if ~isequal(filename,'')
                warn = warndlg('Loading...');
            end
            [loadedSignal,Fs] = audioread(strcat(pathname,filename));
            close(warn);
            handles.data.loadedSignal=loadedSignal;
            handles.data.Fs=Fs;
            period=2;
            handles.data.period=period;
            guidata(hObject,handles);
            
function mix(hObject,eventdata,handles)
        global mixedSignal;
       % w_m = warndlg('Mixing signal...');
        % Start with the Equalization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        % Obtain gains
        g(1) = 10^(str2double(get(handles.editband1,'string'))/20)
        g(2) = 10^(str2double(get(handles.editband2,'string'))/20);
        g(3) = 10^(str2double(get(handles.editband3,'string'))/20);
        g(4) = 10^(str2double(get(handles.editband4,'string'))/20);
        g(5) = 10^(str2double(get(handles.editband5,'string'))/20);
        g(6) = 10^(str2double(get(handles.editVolume,'string'))/20);

        % Sampling freq
        Fs=handles.data.Fs;
        
        %stop frequencies
        % Band 1: 
        fc(1)= 80;
        % Band 2:
        fc(2)=300;
        % Band 3:
        fc(3)=1000;
        % Band 4:
        fc(4)=4000;
        % Band 5:
        fc(5)=12000;
        
        mixedSignal = handles.data.partsignal;

        
        % BAND FILTERS
        % Band 1 Filter:
        [b1, a1] = tf(design(fdesign.lowpass(fc(1),100, 1, 20, Fs), 'ellip', 'MatchExactly', 'both'));
        y1 = g(1)*filter(b1,a1,mixedSignal);
        % Band 2 Filter:
        [b2, a2] = tf(design(fdesign.bandpass(60, fc(1), fc(2),500, 40, 1, 20, Fs), 'ellip', 'MatchExactly', 'both'));
        y2 = g(2)*filter(b2,a2,mixedSignal);
        % Band 3 Filter:
        [b3, a3] = tf(design(fdesign.bandpass(200, fc(2), fc(3),2000, 40, 1, 20, Fs), 'ellip', 'MatchExactly', 'both'));
        y3 = g(3)*filter(b3,a3,mixedSignal);
        % Band 4 Filter:
        [b4, a4] = tf(design(fdesign.bandpass(500, fc(3), fc(4), 12000, 60, 1, 20, Fs), 'ellip', 'MatchExactly', 'both'));
        y4 = g(4)*filter(b4,a4,mixedSignal);
        % Band 5 Filter:
        [b5, a5] = tf(design(fdesign.highpass(1, fc(4), 80, 1, Fs), 'ellip', 'MatchExactly', 'both'));
        y5 = g(5)*filter(b5,a5,mixedSignal);
        
        % Equalized signal
        mixedSignal = g(6)*(y1+y2+y3+y4+y5);
        
        % Add the Effects %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        
        % NOISE
        if get(handles.checkbox_whitenoise,'Value')
            snr = 50 - get(handles.sliderwhitenoise,'Value'); % get effect value
            disp(num2str(snr));
            mixedSignal = awgn(mixedSignal,snr,'measured');
        end
        
        % REVERB
        if get(handles.checkbox_reverb,'Value')

            a = get(handles.slider_reverb,'Value');  % get effect value
            
            % Define Reverb filter; ref:http://es.mathworks.com/help/dsp/examples/audio-special-effects.html
            D = 3500; % delay
            h_rev = zeros(size(mixedSignal));
            for i=0:9
                h_rev(1+i*D) = a^i;
            end
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_rev);
        end
        
        % DELAY
        if get(handles.checkbox_delay,'Value')
            D = round(get(handles.slider_delay,'Value'));  % get effect value
            if D == 0
                D = 1;
            end
            h_del = zeros(size(mixedSignal));
            h_del(1) =1;
            h_del(D) = 1;
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_del);
        end
        
        % PITCH
        if get(handles.checkbox_pitch,'Value')
            a = sqrt(2)^(get(handles.slider_pitch,'Value'));  % get effect value
            Fs = a*Fs;
        end
        
        % DISTORTION
        if get(handles.checkbox_guitardistort,'Value')
            b = get(handles.slider_guitardistort,'Value');  % get effect value
            k = 2*b/(1-b);
            mixedSignal = (1+k)*(mixedSignal)./(1+k*abs(mixedSignal));
        end
        

        % GATER
        if get(handles.checkbox_gater,'Value')
            k = get(handles.slider_gater,'Value');
            
            if k ~=0
            
                mystep = 0.01*2^(round((1-k)*5))*Fs;

                cont = 1;
                while((length(mixedSignal)-cont)>=mystep)

                    mixedSignal(cont:cont+mystep) = 0;
                    cont = cont + 2*mystep;
                end
            end
            
        end
        
       
       
        
        % share mixed signal with other GUIs
        guidata(hObject,handles);
 function mix2(hObject,eventdata,handles)
      global mixedSignal;
       % w_m = warndlg('Mixing signal...');
        % Start with the Equalization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        % Obtain gains
        g(1) = 10^(str2double(get(handles.editband1,'string'))/20)
        g(2) = 10^(str2double(get(handles.editband2,'string'))/20);
        g(3) = 10^(str2double(get(handles.editband3,'string'))/20);
        g(4) = 10^(str2double(get(handles.editband4,'string'))/20);
        g(5) = 10^(str2double(get(handles.editband5,'string'))/20);
        g(6) = 10^(str2double(get(handles.editVolume,'string'))/20);
        mixedSignal = handles.data.partsignal;
        Fs= handles.data.Fs;
        N=length(mixedSignal);
        k=N/Fs;
        Pf=fft(mixedSignal);
        Hw0=[g(1)*ones(1,fix(k*200)),g(2)*ones(1,fix(k*400)),g(3)*ones(1,fix(k*2000)),g(4)*ones(1,fix(k*5000))];
        Hw1= g(5)*ones(1,length(Pf)-2*size(Hw0,2));
        Hw=[Hw0 Hw1 fliplr(Hw0)];
        Yw=Pf.*Hw;
        mixedSignal=g(6)*ifft(Yw);
        
         % Add the Effects %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        
        % NOISE
        if get(handles.checkbox_whitenoise,'Value')
            snr = 50 - get(handles.sliderwhitenoise,'Value'); % get effect value
            disp(num2str(snr));
            mixedSignal = awgn(mixedSignal,snr,'measured');
        end
        
        % REVERB
        if get(handles.checkbox_reverb,'Value')

            a = get(handles.slider_reverb,'Value');  % get effect value
            
            % Define Reverb filter; ref:http://es.mathworks.com/help/dsp/examples/audio-special-effects.html
            D = 3500; % delay
            h_rev = zeros(size(mixedSignal));
            for i=0:9
                h_rev(1+i*D) = a^i;
            end
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_rev);
        end
        
        % DELAY
        if get(handles.checkbox_delay,'Value')
            D = round(get(handles.slider_delay,'Value'));  % get effect value
            if D == 0
                D = 1;
            end
            h_del = zeros(size(mixedSignal));
            h_del(1) =1;
            h_del(D) = 1;
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_del);
        end
        
        % PITCH
        if get(handles.checkbox_pitch,'Value')
            a = sqrt(2)^(get(handles.slider_pitch,'Value'));  % get effect value
            Fs = a*Fs;
        end
        
        % DISTORTION
        if get(handles.checkbox_guitardistort,'Value')
            b = get(handles.slider_guitardistort,'Value');  % get effect value
            k = 2*b/(1-b);
            mixedSignal = (1+k)*(mixedSignal)./(1+k*abs(mixedSignal));
        end
        

        % GATER
        if get(handles.checkbox_gater,'Value')
            k = get(handles.slider_gater,'Value');
            
            if k ~=0
            
                mystep = 0.01*2^(round((1-k)*5))*Fs;

                cont = 1;
                while((length(mixedSignal)-cont)>=mystep)

                    mixedSignal(cont:cont+mystep) = 0;
                    cont = cont + 2*mystep;
                end
            end
            
        end
        
       
       
        
        % share mixed signal with other GUIs
        guidata(hObject,handles);
  
 function plotspectrum(input,t,mode,Fs)
          
          N = 2^14; k=0:N-1; f= (Fs/N).*k;X = fft(input,N);
          axes(t);
           semilogx(f(1:20000/(Fs/N)),20*log(abs(X(1:20000/(Fs/N)))));  xlim([10 22000]); 
           grid on;


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        set(handles.sliderband1,'Value',0);
        set(handles.sliderband2,'Value',0);
        set(handles.sliderband3,'Value',0);
        set(handles.sliderband4,'Value',0);
        set(handles.sliderband5,'Value',0);
        set(handles.slider_volume,'Value',0);
        set(handles.sliderwhitenoise,'Value',0);
        set(handles.slider_reverb,'Value',0);
        set(handles.slider_delay,'Value',0);
        set(handles.slider_pitch,'Value',0);
        set(handles.slider_guitardistort,'Value',0);
        set(handles.slider_gater,'Value',0);
        set(handles.editband1,'String',0);
        set(handles.editband2,'String',0);
        set(handles.editband3,'String',0);
        set(handles.editband4,'String',0);
        set(handles.editband5,'String',0);
        set(handles.editVolume,'String',0);
        cla(handles.axes1,'reset');
        cla(handles.axes2,'reset');
        set(handles.checkbox_whitenoise,'Value',0);
        set(handles.checkbox_reverb,'Value',0);
        set(handles.checkbox_delay,'Value',0);
        set(handles.checkbox_pitch,'Value',0);
        set(handles.checkbox_guitardistort,'Value',0);
        set(handles.checkbox_gater,'Value',0);
        


% --- Executes on button press in style_voice.
function style_voice_Callback(hObject, eventdata, handles)
% hObject    handle to style_voice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',-4);
        set(handles.sliderband2,'Value',-1);
        set(handles.sliderband3,'Value',2);
        set(handles.sliderband4,'Value',2);
        set(handles.sliderband5,'Value',-3);
        set(handles.editband1,'String',-4);
        set(handles.editband2,'String',-1);
        set(handles.editband3,'String',2);
        set(handles.editband4,'String',2);
        set(handles.editband5,'String',-3);


% --- Executes on button press in style_rock.
function style_rock_Callback(hObject, eventdata, handles)
% hObject    handle to style_rock (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',5);
        set(handles.sliderband2,'Value',4);
        set(handles.sliderband3,'Value',0);
        set(handles.sliderband4,'Value',4);
        set(handles.sliderband5,'Value',5);
        set(handles.editband1,'String',5);
        set(handles.editband2,'String',4);
        set(handles.editband3,'String',0);
        set(handles.editband4,'String',4);
        set(handles.editband5,'String',5);


% --- Executes on button press in style_jazz.
function style_jazz_Callback(hObject, eventdata, handles)
% hObject    handle to style_jazz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',4);
        set(handles.sliderband2,'Value',1);
        set(handles.sliderband3,'Value',5);
        set(handles.sliderband4,'Value',5);
        set(handles.sliderband5,'Value',0);
        set(handles.editband1,'String',4);
        set(handles.editband2,'String',1);
        set(handles.editband3,'String',5);
        set(handles.editband4,'String',5);
        set(handles.editband5,'String',0);


% --- Executes on button press in style_classic.
function style_classic_Callback(hObject, eventdata, handles)
% hObject    handle to style_classic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',2);
        set(handles.sliderband2,'Value',3);
        set(handles.sliderband3,'Value',0);
        set(handles.sliderband4,'Value',4);
        set(handles.sliderband5,'Value',4);
        set(handles.editband1,'String',2);
        set(handles.editband2,'String',3);
        set(handles.editband3,'String',0);
        set(handles.editband4,'String',4);
        set(handles.editband5,'String',4);


% --- Executes on button press in style_popular.
function style_popular_Callback(hObject, eventdata, handles)
% hObject    handle to style_popular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',4);
        set(handles.sliderband2,'Value',3);
        set(handles.sliderband3,'Value',0);
        set(handles.sliderband4,'Value',5);
        set(handles.sliderband5,'Value',6);
        set(handles.editband1,'String',4);
        set(handles.editband2,'String',3);
        set(handles.editband3,'String',0);
        set(handles.editband4,'String',5);
        set(handles.editband5,'String',6);


% --- Executes on button press in style_normal.
function style_normal_Callback(hObject, eventdata, handles)
% hObject    handle to style_normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.sliderband1,'Value',0);
        set(handles.sliderband2,'Value',0);
        set(handles.sliderband3,'Value',0);
        set(handles.sliderband4,'Value',0);
        set(handles.sliderband5,'Value',0);
        set(handles.editband1,'String',0);
        set(handles.editband2,'String',0);
        set(handles.editband3,'String',0);
        set(handles.editband4,'String',0);
        set(handles.editband5,'String',0);


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1



% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
