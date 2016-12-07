rng('default')
n = 1000;
c = 1.5;
x1pts = 2*c*(rand(n,1)-.5);
x2pts = 2*c*(rand(n,1)-.5);
alpha = min(c-sqrt(.75),2*sqrt(.75));
[area_est,area_conf_int] = MC_area(alpha,c,x1pts,x2pts)