% parameters
sigma = 1000.0; % stiffness per unit length, N/m^2
w = 1.0; % contents width, m
d = 0.5; % contents depth, m
%% question (a): stiffness 2 points
K_xx = sigma*2*d; % horizontal stiffness, N/m
K_yy = sigma*2*w; % vertical stiffness, N/m
K = [1000 0; 0 2000]; % stiffness matrix
%% question (b): imposed displacements 2 points
Ndir = 12; % number of directions; request a power of 2
x= 0.01*[cos(2*(1:Ndir)*pi/Ndir); sin(2*(1:Ndir)*pi/Ndir)];
F = K*x; % evoked forces, pay attention the unit
%% question (c): quiver plot of imposed displacements
o_x = zeros(1,Ndir); % x origins
o_y = zeros(1,Ndir); % y origins
quiver(o_x, o_y, x(1,:), x(2,:),'b','displayname','Imposed displacements') % 1points
axis equal
% quiver plot of evoked forces
hold on
fplot = F/1000; % re-scale f for plotting
 % scale makes f visible on the same plot as x
quiver(o_x, o_y,fplot(1,:),fplot(2,:),'r','displayname','Evoked forces') %1 point
xlabel('Displacement in x axis (m)') %1 point
ylabel('Displacement in y axis (m)') % 1 point
title('Superimposing of imposed displacement and evoked force') % 1 point
legend('Imposed displacement', 'Evoked forces') % 1 point