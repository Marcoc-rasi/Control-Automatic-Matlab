%transformada inversa laplace
clear all
clc
syms s
%f=(9)/(s*(s+7.85)*(s+1.1459));
f=200/(s*(s^2+10*s+200))
i=ilaplace(f)