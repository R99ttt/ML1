%Jacob Zack , Rami Abu Rabia 
function [Gradient] = computeGradient(Data, Errors)
    %Getting the number of examples - m, and number of features
    [m, features] = size(Data);

    %Define gradient vector with zeros
    Gradient = zeros(features, 1);

    %Calculate gradient for each feature
    for j = 1:features
        %Single data column j
        Xj = selectSingle(Data, j);

        %Calculate gradient:
        Gradient(j) = (1/m) * sum(Xj .* Errors);
    end
end