P = 0;
for i = 0:n
    P=P+(-1)^i*x^(2*i+1)/factorial(2*i+1);
end

comment3b = 'The larger n is, the more accurate P will be to the actual value';

