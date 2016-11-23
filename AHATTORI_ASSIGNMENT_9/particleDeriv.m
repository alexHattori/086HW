function [sf] = particleDeriv(s,alpha)

v = s(1:3,1);
r = s(4:6,1);

rx = r(1);
ry = r(2);
rz = r(3);

P = 1/3*[2 -1 -1; -1 2 -1; -1 -1 2] * r;

n = norm(P);
ux = 5*(rz-ry)/(n^2);
uy = 5*(rx-rz)/(n^2);
uz = 5*(ry-rx)/(n^2);

u = [ux;uy;uz];

a = alpha*(u-v)*norm(u-v);

ax = a(1);
ay = a(2);
az = a(3);

vx = v(1);
vy = v(2);
vz = v(3);

sf = [ax;ay;az;vx;vy;vz];
end

