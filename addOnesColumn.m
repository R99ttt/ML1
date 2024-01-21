%Jacob Zack , Rami Abu Rabia 
function [D1] = addOnesColumn(D1)
    ones_column = ones(size(D1,1), 1);
    D_with_ones = [ones_column, D1];
    D1 = D_with_ones;
end