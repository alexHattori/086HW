deltaT = t(2)-t(1);
a_FD = (z(2)-2*z(3)+z(4))/(deltaT^2);

b = LeastSquares(z,t);

a_LS = 2*b(3);