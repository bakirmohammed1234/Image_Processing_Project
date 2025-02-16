function varargout = MenuTP1Bakir(varargin)
% MENUTP1BAKIR MATLAB code for MenuTP1Bakir.fig
%      MENUTP1BAKIR, by itself, creates a new MENUTP1BAKIR or raises the existing
%      singleton*.
%
%      H = MENUTP1BAKIR returns the handle to a new MENUTP1BAKIR or the handle to
%      the existing singleton*.
%
%      MENUTP1BAKIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUTP1BAKIR.M with the given input arguments.
%
%      MENUTP1BAKIR('Property','Value',...) creates a new MENUTP1BAKIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuTP1Bakir_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuTP1Bakir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuTP1Bakir

% Last Modified by GUIDE v2.5 26-Dec-2024 15:10:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuTP1Bakir_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuTP1Bakir_OutputFcn, ...
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


% --- Executes just before MenuTP1Bakir is made visible.
function MenuTP1Bakir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuTP1Bakir (see VARARGIN)

% Choose default command line output for MenuTP1Bakir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MenuTP1Bakir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuTP1Bakir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Fichier_Callback(hObject, eventdata, handles)
% hObject    handle to Fichier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Filtre_Passe_Bas_Callback(hObject, eventdata, handles)
% hObject    handle to Filtre_Passe_Bas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Filtre_Passe_Haut_Callback(hObject, eventdata, handles)
% hObject    handle to Filtre_Passe_Haut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Transformation_Callback(hObject, eventdata, handles)
% hObject    handle to Transformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Filtre_Frequentiel_Callback(hObject, eventdata, handles)
% hObject    handle to Filtre_Frequentiel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Bruit_Callback(hObject, eventdata, handles)
% hObject    handle to Bruit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Gaussien_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussien (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageO=handles.courant_data;
Imgb =imnoise(imageO,'gaussian', 0,0.01);
%Imgb=handles.Imgb;
axes(handles.imgT)
imshow(Imgb);
handles.courant_data=Imgb;
%subImage(handles.Imgb);
handles.output=hObject;
guidata(hObject,handles);

% --------------------------------------------------------------------
function Piovre_et_Sel_Callback(hObject, eventdata, handles)
% hObject    handle to Piovre_et_Sel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageO=handles.courant_data;
Imgb =imnoise(imageO,'Salt & Pepper', 0.01);
%Imgb=handles.Imgb;
axes(handles.imgT)
%
imshow(Imgb);
handles.courant_data=Imgb;
%subImage(handles.Imgb);
handles.output=hObject;
guidata(hObject,handles);


% --------------------------------------------------------------------
function Fpb_Callback(hObject, eventdata, handles)
% hObject    handle to Fpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Fpbb_Callback(hObject, eventdata, handles)
% hObject    handle to Fpbb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Fph_Callback(hObject, eventdata, handles)
% hObject    handle to Fph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Fphb_Callback(hObject, eventdata, handles)
% hObject    handle to Fphb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Inversion_des_coleurs_negative_Callback(hObject, eventdata, handles)
% hObject    handle to Inversion_des_coleurs_negative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
%[n,m]=size(image);
image = double(image);
[l c]=size(image);
image = double(image);
v=image;
for i=1:l
   for j=1:c
     v(i,j)=-double(image(i,j))+255;
    end
 end 

v=uint8(v); 
axes(handles.imgT);
subimage(v);

% --------------------------------------------------------------------
function Contraste_Callback(hObject, eventdata, handles)
% hObject    handle to Contraste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[l c]=size(image);
image = double(image);
v=image;
for i=1:l
    for j=1:c
      fpixel = (image(i,j)-128)*5 + 128; 
    % on verifie que la valeur obtenue est bien dans [0..255]
    if( fpixel>255 )
      fpixel = 255;
    else if( fpixel<0 )
      fpixel = 0;
        end 
    end
    
   v(i,j) = fpixel;
    end
end  
v=uint8(v); 
axes(handles.imgT);
subimage(v);


% --------------------------------------------------------------------
function Luminosite_Callback(hObject, eventdata, handles)
% hObject    handle to Luminosite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[l c]=size(image);
image = double(image);
v=image;
for i=1:l
    for j=1:c
        pix=image(i,j)+50;
         if(pix>255)
            pix=255;
         else if (pix<0)
                pix=0;
             
              end 
          end
       v(i,j)=pix;    
    end
end  
v=uint8(v); 
axes(handles.imgT);
subimage(v);

% --------------------------------------------------------------------
function Binarisation_Callback(hObject, eventdata, handles)
% hObject    handle to Binarisation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I4 = handles.courant_data;
%****************************
% Calcule du seuil
%****************************
%calucle des m:
m0=1;
m1=mean2(I4);
m2=mean2(I4.^2);
m3=mean2(I4.^3);
%calcule des C:
C1=(m3-(m1*m2))/(m2-m1);
C0=(-m2-(C1*m1))/m0;
%calcule des z:
z1=(-C1-sqrt(C1^2-4*C0))/2;
z2=(-C1+sqrt(C1^2-4*C0))/2;
seuil=(z1+z2)/2;

bin=(I4>seuil)*255;
text(2,10,num2str(seuil));
%
% Solution via matlab de la binarisation :
% level=graythresh(I4); %calcule seuil
% bin = im2bw(I4,level); %binarisation matlab
axes(handles.imgO);
subimage(I4);
axes(handles.imgT);
handles.ima_traite = bin;
subimage(handles.ima_traite);

%Grrr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --------------------------------------------------------------------
function Niveau_de_Gris_Callback(hObject, eventdata, handles)
% hObject    handle to Niveau_de_Gris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ima=handles.courant_data;

d = length(size(ima));
if d==3
    imagray=rgb2gray(ima);
elseif d==2
   imagray=ima;
end
axes(handles.imgT);
subimage(imagray);



% --------------------------------------------------------------------
function Histogramme_Callback(hObject, eventdata, handles)
% hObject    handle to Histogramme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img = handles.courant_data;
%I=rgb2gray(img);
        d = length(size(img));
        if d==3
            I = rgb2gray(img);
        elseif d==2
            I = img
        end
axes(handles.imgO);
subimage(I);


[nl nc]=size(I);
v=double(I);
vec=[1:256];
l=0;
for k=0:255 
    for i=1:nl
        for j=1:nc
            if v(i,j)==k 
               l=l+1;
            end
        end
    end
    vec(k+1)=l;
    l=0;
end
axes(handles.imgT);
plot(vec);


% --------------------------------------------------------------------
function Laplacien_Callback(hObject, eventdata, handles)
% hObject    handle to Laplacien (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Gradient_Callback(hObject, eventdata, handles)
% hObject    handle to Gradient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
output=image;
%image=rgb2gray(image);

[m,n] = size(image);
output=zeros(size(image)); 
outputhor=zeros(size(image)); 
outputver=zeros(size(image)); 
maskhor = [0,0,0;-1,0,1;0,0,0]; 
maskver = [0,-1,0;0,0,0;0,1,0];
for i=4:(m-3)
   for j=4:(n-3) 
      for k=1:3         
          for l=1:3
            outputhor(i,j) = outputhor(i,j)+image(i-k,j-l)*maskhor(k,l);            
            outputver(i,j) = outputver(i,j)+image(i-k,j-l)*maskver(k,l);          
          end
      end
    end
 end
%mymin=min(min(output))
%mymax=max(max(output))
for i=4:(m-3)
for j=4:(n-3)       
    output(i,j)=sqrt(outputhor(i,j)*outputhor(i,j) + outputver(i,j)*outputver(i,j));
end 
end 
%outputhor=uint8(outputhor); 
%outputver=uint8(outputver); 
output=uint8(output); 

%b=uint8(b);
axes(handles.imgT);
subimage(output);


% --------------------------------------------------------------------
function Sobel_Callback(hObject, eventdata, handles)
% hObject    handle to Sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Prewitt_Callback(hObject, eventdata, handles)
% hObject    handle to Prewitt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Roberts_Callback(hObject, eventdata, handles)
% hObject    handle to Roberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Lineaire_Callback(hObject, eventdata, handles)
% hObject    handle to Lineaire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Non_Lineaire_Callback(hObject, eventdata, handles)
% hObject    handle to Non_Lineaire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Ouvrire_Callback(hObject, eventdata, handles)
% hObject    handle to Ouvrire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[file,path] = uigetfile('*.*');
handles.ima = imread(sprintf('%s',path,file));

axes(handles.imgO)
handles.courant_data = handles.ima;
subimage(handles.courant_data);

axes(handles.imgT)
% handles.ima_traite = 0;
% subimage(handles.ima_traite);
subimage(handles.courant_data);

handles.output = hObject;
guidata(hObject, handles);



% --------------------------------------------------------------------
function Enregistrer_Callback(hObject, eventdata, handles)
% hObject    handle to Enregistrer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = handles.courant_data;
[file,path] = uiputfile('*.png','Enregistrer Votre Image ...');
imwrite(image, sprintf('%s',path,file),'png');


% --------------------------------------------------------------------
function Quitter_Callback(hObject, eventdata, handles)
% hObject    handle to Quitter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)

% --------------------------------------------------------------------
function Median_Callback(hObject, eventdata, handles)
% hObject    handle to Median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
image=double(image);
[n,m]=size(image);
img=image;
for i=2:n-1
    for j=2:m-1
       fenetre=image(i-1:i+1,j-1:j+1);
       v=[fenetre(1,:) fenetre(2,:) fenetre(3,:)];
       sort(v);
       a=median(v);
       img(i,j)=a;
    end
end
b=uint8(img);
handles.ima_traite = b;
axes(handles.imgT);
subimage(b);
handles.output = hObject;
guidata(hObject, handles);

% --------------------------------------------------------------------
function Moyenneur_3_3_Callback(hObject, eventdata, handles)
% hObject    handle to Moyenneur_3_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
b=image;
%disp(b(4,2));
H=(1/9)*[1 1 1 ; 1 1 1 ; 1 1 1 ];
for x = 2 : n-1
    for y = 2 : m-1
     %img(x,y)=mean([image(x-1,y-1)+image(x-1,y)+image(x-1,y+1)+image(x,y-1)+image(x,y)+image(x,y+1)+image(x+1,y-1)+image(x+1,y)+image(x+1,y+1)]);
      f=image(x-1:x+1,y-1:y+1);
      v=f.*H;
      %disp(v);
      %b=conv2(img,H);
      b(x,y)=sum(v(:));
      %b(x,y)=mean(f(:));
    end 
end
b=uint8(b);
%imshow(b);
axes(handles.imgT);
subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);

% --------------------------------------------------------------------
function Moyenneur_5_5_Callback(hObject, eventdata, handles)
% hObject    handle to Moyenneur_5_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
b=image;
H=(1/25)*[1 1 1 1 1 ; 1 1 1 1 1 ; 1 1 1 1 1 ; 1 1 1 1 1 ; 1 1 1 1 1];
for x = 3 : n-2
    for y = 3 : m-2
     f=image(x-2:x+2,y-2:y+2);
      v=f.*H;
      b(x,y)=sum(v(:));
    end 
end
b=uint8(b);
axes(handles.imgT);
     subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);


% --------------------------------------------------------------------
function Gaussien_3_3_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussien_3_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
b=image;
H=(1/16)*[1 2 1 ;2 4 2 ; 1 2 1];
for x = 2 : n-1
    for y = 2 : m-1
    f=image(x-1:x+1,y-1:y+1);
      v=f.*H;
      b(x,y)=sum(v(:));
    end 
end
b=uint8(b);
axes(handles.imgT);
subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);

% --------------------------------------------------------------------
function Gaussien_5_5_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussien_5_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
b=image;
H=(1/256)*[1 4 6 4 1 ; 4 16 24 16 4 ; 6 24 36 24 6 ; 4 16 24 16 4 ; 1 4 6 4 1];
for x = 3 : n-2
    for y = 3 : m-2
  f=image(x-2:x+2,y-2:y+2);
      v=f.*H;
      b(x,y)=sum(v(:));
    end 
end
b=uint8(b);
axes(handles.imgT);
subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);

% --------------------------------------------------------------------
function Conique_Callback(hObject, eventdata, handles)
% hObject    handle to Conique (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[ n,m]=size(image);
image = double(image);
b=image;
H=(1/25)*[0 0 1 0 0 ; 0 2 2 2 0 ; 1 2 5 2 1 ; 0 2 2 2 0 ; 0 0 1 0 0];
for x = 3 : n-2
    for y = 3 : m-2
       f=image(x-2:x+2,y-2:y+2);
      v=f.*H;
      b(x,y)=sum(v(:));
    end 
end
b=uint8(b);
axes(handles.imgT);
subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);

% --------------------------------------------------------------------
function Pyramidal_Callback(hObject, eventdata, handles)
% hObject    handle to Pyramidal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=handles.courant_data;
[n,m]=size(image);
image = double(image);
b=image;
H=(1/81)*[1 2 3 2 1 ; 2 4 6 4 2 ; 3 6 9 6 3 ; 2 4 6 4 2 ; 1 2 3 2 1];
for x = 3 : n-2
    for y = 3 : m-2
          f=image(x-2:x+2,y-2:y+2);
      v=f.*H;
      b(x,y)=sum(v(:));
    end 
end
b=uint8(b);
axes(handles.imgT);
subimage(b);
handles.ima_traite = b;
handles.output = hObject;
guidata(hObject, handles);