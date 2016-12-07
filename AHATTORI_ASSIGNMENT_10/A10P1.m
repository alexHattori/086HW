A10P1a_mean = 7;
A10P1a_var = 5.8333;

Ns = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024];

expmean = A10P1a_mean*ones(length(Ns),1);
expvar = A10P1a_var*ones(length(Ns),1);
means = zeros(length(Ns),1);
vars = zeros(length(Ns),1);

for i = 1:length(Ns)
    N = Ns(i);
    v = randi([1,6],1,N)+randi([1,6],1,N);
    means(i) = mean(v);
    vars(i) = var(v);
end
figure('Name','A10P1B','NumberTitle','off');
semilogx(Ns,means,Ns,vars,Ns,expmean,Ns,expvar);
title('A10P1b');
xlabel('Log(N)');
ylabel('Mean and Variance');
legend('Means','Variations','Expected Mean','Expected Variance');

figure('Name','A10P1C','NumberTitle','off');
histogram(randi([1,6],1,512)+randi([1,6],1,512));
title('A10P1c');
xlabel('Outcome');
ylabel('Probability');

figure('Name','A10P1D','NumberTitle','off');
subplot(2,2,1);
histogram(randi([1,6],1,512)+randi([1,6],1,512));
title('“A10P1c trials using randi');
xlabel('Outcome');
ylabel('Probability');

subplot(2,2,2);
histogram(ceil(rand(1,512)*6)+ceil(rand(1,512)*6));
title('A10P1d trials with rand and transformation');
xlabel('Outcome');
ylabel('Probability');

A10P1e_p = 