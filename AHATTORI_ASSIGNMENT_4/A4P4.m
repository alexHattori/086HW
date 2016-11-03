K = [1000,0;0,2000];
xDisp = 0.01*cos(0:pi/6:2*pi-pi/6);
yDisp = 0.01*sin(0:pi/6:2*pi-pi/6);
input = [ xDisp;yDisp];
F = K*input;

figure;
x_1 = zeros([1,12]);
y_1 = zeros([1,12]);
quiver(x_1,y_1,1000*xDisp,1000*yDisp);
hold on;
quiver(x_1,y_1,F(1,:),F(2,:));
axis equal;
xlabel('X displacements/X Forces');
ylabel('Y displacements/Y Forces');
title('Forces imposed on displacements (12)');
legend('1000*Displacements','Force');
hold off;

figure;
x_1 = zeros([1,128]);
y_1 = zeros([1,128]);
xDisp2 = 0.01*cos(linspace(0, 2*pi-pi/64, 128));
yDisp2 = 0.01*sin(linspace(0, 2*pi-pi/64, 128));
input2 = [ xDisp2;yDisp2];
F2 = K*input2;
quiver(x_1,y_1,1000*xDisp2,1000*yDisp2);
hold on;
quiver(x_1,y_1,F2(1,:),F2(2,:));
axis equal;
xlabel('X displacements/X Forces');
ylabel('Y displacements/Y Forces');
title('Forces imposed on displacements (128)');
legend('1000*Displacements','Force');
hold off;

theta =  atan2(F(1,:),F(2,:)) - atan2(xDisp,yDisp);
figure;
plot(atan2(xDisp,yDisp),theta);
xlabel('Displacement Direction');
ylabel('Theta between displacement and force');
title('Theta Between Displacement and Force vs Direction of Displacement');

max_angle =  0.3335;

%Eigen vector occus when theta = 0   === Indexes 0,97
eig_1 = [1,0];
eig_2 = [0,1];

lam_1 = 10;
lam_2 = -20;

comment4h = 'When we displace the box in the 1,0 direction (one in x, 0 in y), the force we feel will be 10Newtons in the same direction. When we impose a displacement in the 0,1 direction, we will feel a force of 20Newtons in the opposite direction';

