syms kk s
%Expansion de la expresion denominador lazo cerrado
a = s + 1 ;
b = s + 2;
c = kk*(s-1)*(s-2);
numerador = expand((s-1)*(s-2));
Denominador = expand((a * b) + c);
%Dibujo del LGR
%Ganancia
k = 0.5;
%Numerador G(s)
num = [k -3*k 2*k];
%Denominador G(s)
den = [1 3 2];
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


%Imagen amortiguamiento 0.7 y criticamente amortiguada
%Ganancia
k1 = 0.2593737546;
k2 = 0.03898770659;
%Numerador G(s)
num1 = [k1 -3*k1 2*k1];
num2 = [k2 -3*k2 2*k2];
%Funcion de transferencia lazo abierto
gLazoAbierto1 = tf(num1,den);
gLazoAbierto2 = tf(num2,den);
%Funcion de transferencia lazo cerrado
gLazoCerrado1 = feedback(gLazoAbierto1,1)
gLazoCerrado2 = feedback(gLazoAbierto2,1)
figure('name','Respuesta escalon comparada');
step(gLazoCerrado1,gLazoAbierto2)
legend('Indice de amortiguamiento 0.7','Criticamente Amortiguada','Location','SouthEast')
Informacion1 = stepinfo(gLazoCerrado1)
Informacion2 = stepinfo(gLazoCerrado2)