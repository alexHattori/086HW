P = 0;
for i = 0:n
    if mod(i,2)==1
        val = (x^i)/factorial(i);
        if mod(i,3) ==0 || mod(i,2)==0
            val = -val;
        end
        P = P+val;
    end
    
end

comment3b = 'The larger n is, the more accurate P (our calculated approximation) will be to the actual value';

comment3c = 'Error when n = 1 and x = pi/4 is -.0783. Upper bound for the error is .2181. Greater values for n will decrease error.';


