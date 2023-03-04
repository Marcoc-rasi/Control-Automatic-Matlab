syms k
num=[1 1-4.12i];
den=[1 1+4.12i];
alphabeta=conv(num,den)
alphabetak=alphabeta*k;
num1=[0 k 7*k 77*k 246*k 998*k 1044*k];
betac=conv(den,den);
total=num1+betac;

