theta1 = pi/4;
theta2 = 3*pi/4;
theta3 = pi/2;

l1 = 0.3;
l2 = 0.25;
l3 = 0.05;

Jt = [l1*cos(theta1) l1*sin(theta1); l2*cos(theta2) l2*sin(theta2); l3*cos(theta3) l3*sin(theta3)];

r1 = pi/4;
r2 = pi/2;
r3 = -pi/4;

Jm = [l1*cos(r1) l1*sin(r1); l2*cos(r2) l2*sin(r2);l3*cos(r3) l3*sin(r3)];

angles = 0:pi/64:2*pi-pi/64;
fx = cos(angles);
fy = sin(angles);
f = [fx;fy];
mu = Jm*f;
figure('Name','A5P5c','NumberTitle','off');
quiver3(fx,fy,zeros(1,128),mu(1,:),mu(2,:),mu(3,:));
title('Quiver Plot of F imposed with Relative Torque');
xlabel('x');
ylabel('y');
zlabel('z');

CommentA5P5D = 'No it does not span the full range of torques';