l1 = 0.3;
l2 = 0.25;
l3 = 0.05;

t1 = pi/4;
t2 = 3*pi/4;
t3 = pi/2;

Js = [-l1*sin(t1) -l2*sin(t2) -l3*sin(t3);l1*cos(t1) l2*cos(t2) l3*cos(t3)];

T = [1 0 0; 1 1 0; 1 1 1];

Jr = Js*T;

rref([Js [1;1]])

CommentA5P4d = 'A solution exists but it is not unique';