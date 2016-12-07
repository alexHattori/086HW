function [p_all,p_atleastone,N_points] = guesser(quest_attributes)

p_all = 1;
N_points = 0;
P_zero = 1;
for i = 1:length(quest_attributes)
    numOpt = quest_attributes(i,1);
    numPoints = quest_attributes(i,2);
    probRight = 1/numOpt;
    probWrong = 1-probRight;
    
    N_points = N_points+numPoints*probRight;
    p_all = p_all*probRight;
    P_zero = P_zero*probWrong;
end
p_atleastone = 1-P_zero;
