x_bar = 0;
P = 0;
x_tilde = (x-x_bar);
for k = 0:n
    if(k==0)||(k==4)||(k==8)
        P = P+sin(x_bar)*x_tilde^k/factorial(k);
    elseif (k==1)||(k==5)
        P = P+cos(x_bar)*x_tilde^k/factorial(k);
    elseif (k==2)||(k==6)
         P = P-sin(x_bar)*x_tilde^k/factorial(k);
    elseif (k==3)||(k==7)
        P = P-cos(x_bar)*x_tilde^k/factorial(k);
    end
end