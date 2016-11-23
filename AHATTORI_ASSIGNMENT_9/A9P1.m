tFinal = 1000;

s0 = [v0 ; r0] ;

alphas = [0.1,0.2,0.3];
fonts = ['r','b','k'];

figure;
hold on;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('A9P1a');
rFinal = zeros(3,3);
plot3(r0(1),r0(2),r0(3),'k*');
for i = 1:length(alphas)
    alpha = alphas(i);
    [t,s] = ode45(@(t,s) particleDeriv(s,alpha),[0 1000],s0);
    rx = s(:,4);
    ry = s(:,5);
    rz = s(:,6);
    plot3(rx,ry,rz,fonts(i));
    rFinal(:,i) = [rx(length(rx));ry(length(ry));rz(length(rz))];
end
legend('Origin','alpha = 0.1','alpha = 0.2', 'alpha = 0.3');

r_DT = 
norm ((r_DT - r_NT)./(r_DT)) * 100,
