function [b] = LeastSquares(z,t)

X = [ones(5,1),t,t.^2];
b = (X'*X)\(X'*z);


end

