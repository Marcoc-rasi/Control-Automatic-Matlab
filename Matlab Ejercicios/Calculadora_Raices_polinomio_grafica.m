%Calculara las raices de un polinomio de n grado
clear all
clc
syms k
 p =[1 5 45];
 r = roots(p);
 raicesComp = zeros(3,5);
 raices1 = zeros(5,1);
 raices2 = zeros(5,1);
 raices3 = zeros(5,1);
 Transitorio = zeros(5,1);
 i=1;
 for v = 0:0.01:100
   p =[1 5 0 45+v];
 r = roots(p);
 raicesComp(i,1)= v;
 raicesComp(i,2)=r(1);
 raices1(i,1) = r(1); 
 raicesComp(i,3)= r(2);
 raices2(i,1) = r(2);
 raicesComp(i,4)= r(3);
 raices3(i,1) = r(3);
        
 if  r(1)>r(2) && r(1)>r(3) 
            Transitorio(i,1) = 5/r(1);
 elseif r(2)>r(1) && r(2)>r(3)
            Transitorio(i,1) = 5/r(2);
 else
     if r(3)>r(1) && r(3)>r(2)
       Transitorio(i,1) = 5/r(3);
     end    
 end
 Transitorio
 raicesComp(i,5)= Transitorio(i,1);
 i=i+1;
 end
 raicesComp
real_raices1 = real(raices1);
imag_raices1 = imag(raices1);

real_raices2 = real(raices2);
imag_raices2 = imag(raices2);

plot(real_raices1,imag_raices1,'g*',real_raices2,imag_raices2,'bo')