function y = fcn(ent)

global m ele b g a k

u  = ent(1);
x1 = ent(2);
x2 = ent(3);

%x2p = -m*ele*g*sin(x1) - b*x2 + u;
x2p = -(g/ele)*sin(x1) - (k*a^2/(m*ele^2))*sin(x1)*cos(x1) - b/(m*ele^2)*x2 + u/(m*ele^2);

y = x2p;