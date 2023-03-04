clear all
clc
syms t
p=dsolve('D2y+12*Dy+32*y =32*unitstep','y(0)=0','Dy(0)=0');
pretty(p)
l=laplace(p)
pretty(l)