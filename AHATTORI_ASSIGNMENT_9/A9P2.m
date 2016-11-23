
tFinal = 20;
s0 = [0;0];
tol = 1e-12;

options = odeset('AbsTol',tol,'RelTol',tol);
[t,s] = ode45(@g,[0 20],s0,options);

ode45_theta20 = s(length(s),2);

dt = .05;

sCN = [0;0];
for k = 1:tFinal/dt, % (time step counter)
sGuess = sCN(:,k) ; % initial guess for state s at a new
% time index k+1 is simply the old s from time k
sizeOfDelta = 1 ;
while sizeOfDelta > 1e-6,
f = sGuess - sCN(:,k)-(dt/2*( g((k-1)*dt, sCN(:,k)) + g((k)*dt,sGuess) )) ;
dgds = [0 -0.5*cos(sGuess(2)); 1 0]; % derivative of g wrt current guess
dfds = [1 0;0 1] - dt/2 * dgds; % derivative of f wrt current guess
delta = -inv(dfds)*f ; % here’s the Newton-Raphson increment
sGuess = sGuess + delta ; % update the guess
sizeOfDelta = sum(abs(delta)) ; % measure the size of the update
end ;
sCN(:,k+1) = sGuess ; % pocket the final guess!
end ;

CN_Deltat = dt; 
CN_theta20 = sCN(length(sCN));

dt = 0.0005;
sCN = [0;0];
for k = 1:tFinal/dt, % (time step counter)
sGuess = sCN(:,k) ; % initial guess for state s at a new
% time index k+1 is simply the old s from time k
sizeOfDelta = 1 ;
while sizeOfDelta > 1e-6,
f = sGuess - sCN(:,k)-(dt/2*( g((k-1)*dt, sCN(:,k)) + g((k)*dt,sGuess) )) ;
dgds = [0 -0.5*cos(sGuess(2)); 1 0]; % derivative of g wrt current guess
dfds = [1 0;0 1] - dt/2 * dgds; % derivative of f wrt current guess
delta = -inv(dfds)*f ; % here’s the Newton-Raphson increment
sGuess = sGuess + delta ; % update the guess
sizeOfDelta = sum(abs(delta)) ; % measure the size of the update
end ;
sCN(:,k+1) = sGuess ; % pocket the final guess!
end ;

CN_precision_Deltat = dt;

commentA9P2d = 'Our CN approach is slower than ODE45';

