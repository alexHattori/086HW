theta1 = pi/4;
theta2 = 3*pi/4;

l1 = 0.3;
l2 = 0.3;

Jt = [l1*cos(theta1) l1*sin(theta1); l2*cos(theta2) l2*sin(theta2)];

r1 = pi/4;
r2 = pi/2;

Jm = [l1*cos(r1) l1*sin(r1); l2*cos(r2) l2*sin(r2)];

CommentA5P3c = 'Hand forces can be determined and they are unique';
CommentA5P3d = CommentA5P3c;
CommentA5P3e = 'Relative torques can be determined';
