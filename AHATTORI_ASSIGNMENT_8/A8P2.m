m = length(V);

X = [ones(m,1),log(V)];
f = log(D_meas);

sol = X\f;

C_hat = exp(sol(1));
gamma_hat = -sol(2);

commentA8P2b = 'It does not assign equal importance because of the log scale. It will favor smaller erros. Yes it is physically reasonable for the transducer to produce error proportional to the mean signal value.';
