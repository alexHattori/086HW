syms z;
func(z) = atan((0.5*z)^3) + 0.02*log(z + 10) + 0.02*z;
diffFunc(z) = diff(func);
zFinal = zInitial;
for i = 2:kMax
    val1 = func(zFinal);
    val2 = diffFunc(zFinal);
    zFinal = zFinal-val1/val2;
    zFinal = double(zFinal);
    disp('Iter');
end
zFinal = double(zFinal);