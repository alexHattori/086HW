Values;
mag = (x_stick.^2+y_stick.^2).^0.5;
figure;
plot(t,mag);
title('A2P5a');
xlabel('time');
ylabel('magnitude of displacement');

xvel = [0 diff(x_stick)./diff(t)];
yvel = [0 diff(y_stick)./diff(t)];
velMag = (xvel.^2+yvel.^2).^0.5;
disp(velMag);
figure;
plot(t,velMag);
title('A2P5b');
xlabel('time');
ylabel('magnitude of velocity');

comment5c = 'Increasing the sample rate and fitting the function to a smooth function would decrease the noise';
