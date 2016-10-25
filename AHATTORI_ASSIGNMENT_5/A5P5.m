syms theta1 theta2 theta3
J(theta1,theta2,theta3) = [-0.3*(sin(theta1)),-0.25*(sin(theta2)) -0.05*(sin(theta3)); 0.3*cos(theta1), 0.25*cos(theta2) , 0.05*cos(theta3)];
Js = double(J(pi/4,3*pi/4,pi/2));
Jt = Js';
T = [1 0 0; 1 1 0; 1 1 1];
Jm = (Js*T)'; 

angles = 0:pi/64:2*pi-pi/64;
fx = cos(angles);
fy = sin(angles);
f = [fx;fy];
mu = Jm*f;
figure('Name','A5P5c','NumberTitle','off');
quiver3(zeros(1,128),zeros(1,128),zeros(1,128),mu(1,:),mu(2,:),mu(3,:));
title('Quiver Plot of F imposed with Relative Torque');
xlabel('x');
ylabel('y');
zlabel('z');

CommentA5P5D = 'No it does not span the full range of torques';