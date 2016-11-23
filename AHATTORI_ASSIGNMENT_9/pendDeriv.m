function [newS] = pendDeriv(s,t)

theta = s(2);
thetadot = s(1);

ddottheta = 1/2*cos(t/2)-sin(theta);

newS = [ddottheta;thetadot];


end

