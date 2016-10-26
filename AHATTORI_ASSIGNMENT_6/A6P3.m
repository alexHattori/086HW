x = 1:10;
Ta = x+30;

c = 0.1;
cs = x*c;

v = (ones(1,10)*2)+cs;

A = diag(v)+diag(-ones(1,9),-1)+diag(-ones(1,9),1);

f = Ta.*cs;
f(1) = f(1)+T_0;
f(10) = f(10)+T_11;

f = f';

u = A\f;
