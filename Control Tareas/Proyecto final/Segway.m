syms kk s
%Dibujo del LGR
%Variables
k = 1;
M = 2.4;
m = 0.23;
l = 0.36;
g = 9.81;
%Numerador G(s)
num =[k/(M*l)];

%Denominador G(s)
den = [1 0 -(m+M)*g/(M*l)];

%Funcion de transferencia lazo abierto
gLazoAbierto = tf(num,den)

%Funcion de transferencia lazo cerrado
gLazoCerrado = feedback(gLazoAbierto,1)

%Imagen LGR lazo abierto
figure('Name',"LGR lazo abierto");
rlocus(gLazoAbierto)

%Imagen LGR lazo cerrado
figure('Name',"LGR lazo cerrado");
rlocus(gLazoCerrado)

%Imagen Respuesta escalon lazo cerrado
figure('NAME',"Respuesta escalon lazo cerrado");
step(gLazoCerrado)

%Simulacion
sisotool (gLazoAbierto)


