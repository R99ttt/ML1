%Jacob Zack , Rami Abu Rabia 
function [Errors] = computeErrors(Data, Y, Hypothesis)
    m = size(Data,1);
    if m==size(Y,1)
        predictions = predictValue(Data, Hypothesis);
        Errors = predictions - Y;
    end
end