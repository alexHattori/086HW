A2P2;
leftX = x_vec(i_star);
rightX = x_vec(i_star+1);
leftY = f_vec(i_star);
rightY = f_vec(i_star+1);

slope = (rightY-leftY)/(rightX-leftX);

Interp_f_h = slope*(x-leftX)+leftY;