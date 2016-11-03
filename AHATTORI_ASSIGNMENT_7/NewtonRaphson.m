function [dx,dy] = NewtonRaphson(F,x_0,maxit)
E = 69e9;
A1 = 2e-4;
A2 = A1;
A3 = 1e-4;
l1 = 4;
l2 = 4;
l3 = 1.5;

dx = x_0(1);
dy = x_0(2);
d = [dx;dy];
for i = 1:maxit
    jacob = [-E*A2/l2-E*A1/l1-E*A3*dy/(l3^2),-E*A3*dx/(l3^2);
            -E*A1*dy/(l1^2)+E*A2*dy/(l2^2),-E*A3/l3-E*A1*dx/(l1^2)+E*A2*dx/(l2^2)];
    sol = [F*cos(pi/4)-E*A2*dx/l2-E*A1*dx/l1-E*A3*dy*dx/(l3^2);
        F*sin(pi/4)-E*A3*dy/l3-E*A1*dx*dy/(l1^2)+E*A2*dx*dy/(l2^2)];
    d = d-jacob\sol;
    
    dx = d(1);
    dy = d(2);
end
end

