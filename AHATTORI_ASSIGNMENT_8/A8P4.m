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
    hold on;
end
legend('Theta0 = 0.1','Theta0 = 1','Theta0 = 2.9');
xlabel('Time');
ylabel('Angle');
title('Angle of Pendulum as a function of time with varying starting angles');

