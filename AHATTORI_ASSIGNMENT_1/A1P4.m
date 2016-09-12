syms z;
func = atan((0.5*z)^3) + 0.02*log(z + 10) + 0.02*z;
diffFunc = diff(func);
zFinal = zInitial;
for i = 1:kMax-1
    poop = zFinal;
    val1 = double(subs(func,poop));
    val2 = double(subs(diffFunc,poop));
    disp(double(val1));
    zFinal = zFinal-val1/val2;
end