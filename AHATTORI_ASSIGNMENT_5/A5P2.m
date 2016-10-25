theta1 = pi/4;
theta2 = 3*pi/4;
l1 = 0.3;
l2 = 0.3;

Js = [-l1*sin(theta1) -l2*sin(theta2);l1*cos(theta1) l2*cos(theta2)];

T = [1 0; 1 1];

Jr = double(Js*T);

CommentA5P2d = 'It does not exist';
CommentA5P2e = 'Infinite Solutions exist';
