clc;clear;close all;
%% Error meta
Error_meta=0.1;

%% Numero de imagenes
Num_Img=100;

% Y reales
% 1 Hombre
%-1 Mujer

%% vector real de imagenes clasificadas
y=[-1;-1;1;-1;1;1;1;-1;1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;-1;-1;-1;1;-1;1;1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1];

%% Creacion del vector de imagenes y tratamiento de las mismas
for i=1:Num_Img
   Im=strcat('FotosM\',num2str(i), '.jpg');
   F = tratimg(Im);
   %imshow(F);
   VI=reshape(F, 1200,1); %numero de pixeles en la imagen 1 el cual representa la matriz aumentada
   Ximg(i,:)=VI';
end

%% Vector de pesos
w_ini=zeros(1201,1);


%% Salida del Perceptron
yhat=perceptronLearning(Ximg,y,Error_meta,w_ini);


%% Matriz de confusion
confusionmat(y,yhat)