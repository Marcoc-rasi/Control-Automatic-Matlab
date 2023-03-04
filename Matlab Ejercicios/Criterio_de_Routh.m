%Ayuda a determinar el valor de la casilla en el renglon automaticamente
%otorgando el valor
syms e k
a=12+k;
b=2+20*k;
c=a*a*a
d=0;
Matriz1 = [a b;c d];

Valor = -det(Matriz1)/(c)
pretty(a)

