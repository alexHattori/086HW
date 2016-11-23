r = zeros(1000,1);
u = zeros(1000,1);
cumTrials = [];
for i = 1: 1000
    poop = randi([1 6],1,4);
    cumTrials = [cumTrials,poop];
    if any(poop==6)
        r(i) = 1;
    end
    u(i) = mean(r(1:i));
end

figure;
horizontal = 1 - (5/6)^4;
x = 1:1:1000;
subplot(2,1,1);
plot(x,horizontal*ones(size(x)));
hold on
plot(x, u);
legend('Mu (estimate)','Cumulative Mean');
xlabel('NumTrials');
ylabel('Prob of 6 appearing');
title('A9P3');

hold on
subplot(2,1,2);
h = histogram(cumTrials, 6);
xlabel('Number Rolled On Dice');
ylabel('Frequency');
title('Distribution of Numbers Rolled');