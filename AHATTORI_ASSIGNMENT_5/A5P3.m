syms theta1 theta2
J(theta1,theta2) = [-0.3*(sin(theta1)),-0.3*(sin(theta2));0.3*cos(theta1),0.3*cos(theta2)];

Js = double(J(pi/4,3*pi/4));

Jt = Js';

T = [1,0;1,1];

Jm = (Js*T)'; 

CommentA5P3c = 'Hand forces can be determined and they are unique';
CommentA5P3d = CommentA5P3c;
CommentA5P3e = 'Relative torques can be determined';
