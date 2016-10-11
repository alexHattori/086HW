x = -1:2/20:1;

y = -0.5:0.05:1.5;

X = repmat(x,41,1);
Y = repmat(y.',1,21);

A = X.^2+Y.^2;

F = 1./A;

F1 = F;
valRep = (mean(mean(F1(isfinite(F1))),2));
F1(isinf(F1)) = valRep;

F2 = repmat(F1,1,2);


F3 = [F2;100*ones(1,42)];

F4 = F3;
F4(1,:) = 100;
F4(:,1) = 100;
F4(:,end) = 100;

F5 = F4;
F5(21,21)=200;
F5(29,12)=200;
F5(29,31)=200;
F5(30,13:30) = 200;

bigsum = sum(sum(F5).');

