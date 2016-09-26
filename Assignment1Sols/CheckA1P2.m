for Nfib = 2:25    %Wrong for N=1
    A1P2;
    temp1 = Ffib;
    A1S2;
    temp2 = Ffib;
    if temp1~=temp2
        disp('Fail');
    end
end