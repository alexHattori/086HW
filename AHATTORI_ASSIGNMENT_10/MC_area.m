function [area_est,area_conf_int] = MC_area(alpha,c,x1pts,x2pts)

RectArea = 4*c*c;
pointsIn = 0;
numPoints = length(x1pts);
for i = 1:length(x1pts)
    curX1 = x1pts(i);
    curX2 = x2pts(i);
    if(curX1^2+curX2^2<=0.75 || (curX1-alpha)^2+curX2^2<=0.75)
        pointsIn = pointsIn+1;
    end
end

area_est = RectArea*pointsIn/length(x1pts);

area_conf_int = [RectArea*(pointsIn/numPoints-1.96*sqrt(pointsIn/numPoints*(1-pointsIn/numPoints)/numPoints)),RectArea*(pointsIn/numPoints+1.96*sqrt(pointsIn/numPoints*(1-pointsIn/numPoints)/numPoints))];

