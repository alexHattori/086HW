h = [1 0.1 0.01 0.001 0.0001 0.00001];
x = 0.55555555;
errorconst = ones(6);
errorpiece = ones(6);
for i = 1:6
    x_vec = 0:h(i):1;
    f_vec = (x_vec).^-2.*(sin(pi*x_vec));
    realVal = (x^-2)*sin(pi*x);
    A2P4a;
    errorconst(i)= abs(Interp_f_h-realVal);
    A2P4b;
    errorpiece(i)= abs(Interp_f_h-realVal);
end

figure;

plot(1./h,errorconst,'k*-',1./h,errorpiece,'ro-');
title('A2P4c');
xlabel('Errors');
ylabel('1/step size');
legend('Left End Constant','Linear');

