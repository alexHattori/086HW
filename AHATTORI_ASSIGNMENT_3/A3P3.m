h = 0.01;
x = 0:h:3.5-h;
y = x.^2.*sin(pi*x);
Int_3a = 0;
for i = 1:length(x)-1
    Int_3a = Int_3a+h*y(i+1);
end

x = 0:h:3.5;
y = x.^2.*sin(pi*x);
Int_3b = 0;
for i = 1:length(x)-1
    Int_3b = Int_3b+h*(y(i)+y(i+1))/2;
end

h = [0.1 0.01 0.001 0.0001 0.00001 0.000001];
lefts = ones(1,length(h));
traps = ones(1,length(h));
Int_exact = -0.773751354362928;

for i = 1:length(h)
    step = h(i);
    x = 0:step:3.5-step;
    y = (x.^2).*sin(pi*x);
    
    left = 0;
    for j = 1:length(x)-1
        left = left+step*y(j+1);
    end
    lefts(i) = abs(left-Int_exact);
    
    x = 0:step:3.5;
    y = (x.^2).*sin(pi*x);
    trap = 0;
    for j = 1:length(x)-1
        trap = trap+step*(y(j)+y(j+1))/2;
    end
    traps(i) = abs(trap-Int_exact);
end

figure;
title('A3P3c');
loglog(1./h,lefts,'r*-',1./h,traps,'b*-');
xlabel('log(1/h)');
ylabel('log(Error)');
title('Error vs Step Size');
grid on;
legend('Left Estimate','Trapezoidal Estimate');