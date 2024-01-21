%Jacob Zack , Rami Abu Rabia 
function [D,Y] = loadData(filename) 
    data = load(filename);
    [rows, fs]=size(data);
    D = data(1:rows, 1:fs-1);
    Y = data(1:rows, fs);
end