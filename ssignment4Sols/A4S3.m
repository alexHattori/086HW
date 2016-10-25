%% question (a) 2 points
x = linspace(-1, 1, 21);
%% question (b) 2 points
y = -0.5: 0.05: 1.5;
%% question (c) 2 points
X = ones(41, 1)*x;
Y = y' * ones(1, 21);
%% question (d) 2 points
A = X.*X + Y.*Y;
%% question (e)
F = A.^(-1);
%% question (f) 2 points
F1 = F;
F1(find(isinf(F1) == 1)) = mean(F1(find(F1~=Inf)));
%% question (g) 2 points
F2 = F1;
F2=[F1';F1']';
%% question (h) 2 points
F3 = F2;
F3(end+1,:) = 100;
%% question (i) 2 points
F4 = F3;
F4(1,:)=100;
F4(:,1)=100;
F4(:,end)=100;
%% question (j) 2 points
F5 = F4;
F5(30,13:30) = 200;
F5(21,21) = 200;
F5 (29, 12) = 200;
F5 (29, 31) = 200;
%% question (h) 2 points
bigsum = sum(sum(F5));