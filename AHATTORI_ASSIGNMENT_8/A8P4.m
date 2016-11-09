m = 1;
g = 10;
l = 1;

omega0 = 0; 

I = m*l^2;
omega = sqrt(m*g*l/I);

T = 2*pi/omega;

dt = T/1000;
Tf = 3*T;

t = 0:dt:Tf;
thetas = [0.1,1,2.9];


figure('Name','PendulumTime','NumberTitle','off');
motions = zeros(3001,0);
for i = 1:length(thetas)
    motion = zeros(length(t),2);
    motion(1,1) = thetas(i);
    motion(1,2) = omega0;
    for j = 1:length(t)-1
        om = motion(j,2);
        th = motion(j,1);
        motion(j+1,1) = th+om*dt;
        motion(j+1,2) = om+(-sin(th)*m*g*l/I)*dt;
    end
    plot(t,motion(:,1));
    motions = [motions,motion];
    hold on;
end
legend('Theta0 = 0.1','Theta0 = 1','Theta0 = 2.9');
xlabel('Time');
ylabel('Angle');
title('Angle of Pendulum as a function of time with varying starting angles');

hold off;

figure('Name','PendulumPhase','NumberTitle','off')
for i = 1:length(thetas)
    plot(motions(:,2*i-1),motions(:,2*i));
    hold on;
end

legend('Theta0 = 0.1','Theta0 = 1','Theta0 = 2.9');
xlabel('Theta');
ylabel('Omega');
title('Phase Plot of Theta vs Omega with varying starting angles');

commentA8P4c = '1 radian is too big because you can see that energy is starting to increase (omega is increasing). 0.1 radians seems to follow the basic laws of physics.';

commentA8P4d = 'The mathematical model certainly obeys energy conservation. However, because omega appears to increase (in the phase plot it actually spirals out), energy seems to be added into the system and thus doesn not obey energy conservation.';
