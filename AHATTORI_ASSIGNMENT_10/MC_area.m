function [area_est,area_conf_int] = MC_area(alpha,c,x1pts,x2pts)

RectArea = 4*c*c;
pointsIn = 0;
for i = 1:length(x1pts)
    curX1 = x1pts(i);
    curX2 = x2pts(i);
    if(curX1^2+curX2^2<=0.75 || (curX1-alpha)^2+curX2^2<=0.75)
        pointsIn = pointsIn+1;
    end
end

area_est = RectArea*pointsIn/length(x1pts);
curmean = area_est;
zscore = 1.96;
n = length(x1pts);

area_conf_int = [curmean+zscore^2/(2*n)-zscore*sqrt(curmean*(1-curmean)/n+zscore^2/(4*n^2))/(1+zscore^2/n),curmean+zscore^2/(2*n)+zscore*sqrt(curmean*(1-curmean)/n+zscore^2/(4*n^2))/(1+zscore^2/n)];

