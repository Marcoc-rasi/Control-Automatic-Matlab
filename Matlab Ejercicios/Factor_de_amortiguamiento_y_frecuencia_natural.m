%Calculo de estabilidad por factor de amortiguamiento
%Ecuacion de transferencia de segundo grado de la forma
% gs= wn^2/s^2+2L*wn*s+wn^2
%donde L= factor de amortiguamiento relativo
% wn frecuencia natural de decaimiento
%Escribir la ecuacion en la forma
%gs= b/s^2+a*s+b

b= 400;
a=12;
wn=sqrt(b)
L=a/(2*wn)

