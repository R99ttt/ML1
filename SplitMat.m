%Jacob Zack , Rami Abu Rabia 
function Matrices = SplitMat(D, Y)
% Display num of the rows
rows = size(D,1);
disp(['read ', num2str(rows), ' rows']);

% Take the number of columns in matrix D
X = size(D, 2);

% Build matrices array with the size of 
Matrices = cell(1, X);

% For each column put it in a matrix with Y
for i = 1:X
    % Take all the rows and take the i columns
    col_D = D(:, i);
    Matrices{i} = [col_D Y];
end
% Get the number of matrices in M
matricesNum = length(Matrices);

% Loop over matrices in M
for i = 1:matricesNum
    % Define x and y variables for matrix i
    x = Matrices{i}(:, 1);
    y = Matrices{i}(:, 2);

    %graph for matrix i
    figure;
    scatter(x, y)
    title(sprintf('Graph for Matrix %d', i))
    xlabel('Features')
    ylabel('Tags')
end
