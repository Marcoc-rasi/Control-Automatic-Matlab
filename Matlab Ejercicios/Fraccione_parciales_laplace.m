%calculo de fracciones parciales de una funcion de laplace
num=[1 2];
den=[1 5 0];
[r,p,k]=residue(num,den)

syms s
partfrac((s+2)/(s*(s+5)))
pretty(ans)
ilaplace(ans)