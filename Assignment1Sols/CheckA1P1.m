for N = 1:100
A1P1;
temp1 = Q;
A1S1;
temp2 = Q;
if temp1~=temp2
disp('fail');
end
end