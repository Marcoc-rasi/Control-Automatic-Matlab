syms kk s
%Expansion de la expresion denominador lazo cerrado
a = s + 1 ;
b = s + 2;
c = kk*(s-1)*(s-2);
numerador = expand((s-1)*(s-2));
Denominador = expand((a * b) + c);