vals = ones([1,Ngeo+1]);
exps = 0:Ngeo;
vals2 = rgeo.^exps;
G_Ngeo = dot(vals,vals2);