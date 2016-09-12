last = 1;
previous = 0;
for val = 2:Nfib
    Ffib = last+previous;
    previous = last;
    last = Ffib;
end
