T_0 = 5;
T_11 = 10;

dx = .01;
x = 1:dx:10;

Ta = x+30;

c = 0.1;
cs = x*c;

v = (ones(1,length(x))*2)+cs*dx^2;

A = diag(v)+diag(-ones(1,length(x)-1),-1)+diag(-ones(1,length(x)-1),1);

f = Ta.*cs*dx^2;
f(1) = f(1)+T_0;
f(length(x)) = f(length(x))+T_11;

f = f';

tic;
u = A\f;
toc;
tic;
u=inv(A)*f;
toc;
tic;
u = GEBasic(A,f);
toc;
tic;
u=sparse(A)\f;
toc;

comment4a = 'iv was the fastest to run. iii took 4.3 times as long. ii took 1761.1 times as long. i took 21.12 times as long.';
comment4b = 'ii is definitely the slowest because it uses a many for loops which matlab is rather inefficient at. i is the next slowest because finding an inverse is also computatationally intensive (somewhere from n^2.4 to n^3). iv is the fastest because Matlab can rearrange a sparse matrix into a smaller permutation matrix and then solve the lower order matrix.';