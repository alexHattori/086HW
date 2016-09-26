if Nfib == 1
    Ffib = 1;
else
    Ffib_2 = 0;
    Ffib_1 = 1;
    for n = 1:Nfib-1;
        Ffib = Ffib_1+Ffib_2;
        Ffib_2 = Ffib_1;
        Ffib_1=Ffib;
    end
end