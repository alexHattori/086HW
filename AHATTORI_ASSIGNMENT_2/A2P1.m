vals = ones([1,Ngeo+1]);               %Vector size of number of terms (filled with ones)
exps = 0:Ngeo;                         %Exponential terms
vals2 = rgeo.^exps;                    %r^exponents in vector form
G_Ngeo = dot(vals,vals2);              %dot with vector full of ones to sum