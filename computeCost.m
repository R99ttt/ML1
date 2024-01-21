%Jacob Zack , Rami Abu Rabia 
function [cost] = computeCost(Data, Y, Hypothesis)
    Errors = computeErrors(Data, Y, Hypothesis);
    m = size(Data, 1);
    squaredSum = sum(Errors.^2);
    cost = (1/(2*m))*squaredSum;
end