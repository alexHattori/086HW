last = 1;
previous = 0;
if Nfib == 1         %Change to fix checking error
    Ffib = 1;
    return
end                   %End of change
for val = 2:Nfib
    Ffib = last+previous;
    previous = last;
    last = Ffib;
end
