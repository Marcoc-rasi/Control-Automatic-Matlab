num =[1 -9 20];
den=[1 12 45 2];
sys=tf(num,den);
figure(1);
rlocus(sys);
figure(2);
bode(sys);
