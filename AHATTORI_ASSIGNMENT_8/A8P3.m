v0 = 1;
m = 1;
b = 1;

tau = m/b;

dt = [tau/2,tau,2*tau];

figure('Name','LinearFirstOrder','NumberTitle','off');

for i = 1:length(dt)
    t = 0:dt(i):6*tau;
    v = zeros(length(t),1);
    v(1) = v0;
    for j = 2:length(v)
        v(j) = v(j-1)-dt(i)*tau*v(j-1);
    end;
    plot(t,v);
    hold on;
end;
t = 0:0.1:6*tau;
plot(t,v0*exp(-t/tau));
xlabel('Time');
ylabel('Velocity');
legend('deltaT = Tau/2','deltaT = Tau','deltaT = 2*Tau','Analytical Solution');

title('Effect of time increment vs velocity estimation - Viscous Damping');
commentA8P3a = 'The larger the time increment, the worse the estimation is, but it is less computationally intensive (less data points). As can be seen with DeltaT = Tau*2, the step size is so big that we overshoot the actual value and seem to oscillate back and forth around the actual value.';

hold off;
c = 1;


dt2 = [tau,tau/2,tau/10];

figure('Name','NonLinearFirstOrder','NumberTitle','off');

for i = 1:length(dt2)
    t = 0:dt2(i):6*tau;
    v = zeros(length(t),1);
    v(1) = v0;
    for j = 2:length(v)
        if v(j-1) == 0
            sign = 0;
        else
            sign = v(j-1)/abs(v(j-1));
        end;
        v(j) = v(j-1)-dt2(i)*c*sign;
    end;
    plot(t,v);
    hold on;
end;
xlabel('Time');
ylabel('Velocity');
legend('deltaT = Tau','deltaT = Tau/2','deltaT = Tau/10');

title('Effect of time increment vs velocity estimation - Dry Friction');

commentA8P3b = 'In this case, if DeltaT gets too small, the estimated velocity seems to oscillate due to the nature of the sign function.';
