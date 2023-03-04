clear all; clc;close all
global m ele b g k a

ts = 50;
tm = 0.001;

%****************************
% Valores de la referencia
%****************************
 xm = 15;            %amplitud de la señal de referecnia
 w  = 10;                    %0.05*2*pi;    %frecuencia de la señal de referecnia senoidal en Hz, 2*pi para convertir a rad/s
 te =  0*pi/180;    %desfase de la señal de referencia en grados
 perio = 10;        %perido de la señal de referencia cuadrada
%****************************

m = 3;
k = 2;
ele = 1;
a = 0.5;
b = 20;
g = 9.78;
%punto de operación
x1t = 20*pi/180;
x2t = 0;
ut = (g*m*ele)*sin(x1t) + (k*a^2)*sin(x1t)*cos(x1t) + b*x2t;

PO = [x1t;x2t;ut];
%condiciones iniciales
x10 = 20*pi/180;
x20 = 0;
XL0 = [x10;x20] - [x1t;x2t];

XL01 = ([x10;x20;0] - [x1t;x2t;0])*180/pi;
PO1 = [x1t*180/pi;x2t*180/pi;ut];
XL = [[x10;x20;0]*180/pi PO1 XL01]
%variables de estado linealizada
%AA = [1 0;-m*ele*cos(x1t) -b/(m*ele^2)];
AA = [0 1;-(g/ele)*cos(x1t)-(k*a^2/(m*ele^2)*(cos(x1t)^2-sin(x1t)^2)) -b/(m*ele^2)]
BB = [0; 1/(m*ele^2)]
CC = [1 0;0 1 ];
DD = [0;0];

pla = eig(AA)
run pendulo