%Jacob Zack , Rami Abu Rabia 
%[D,Y] = loadData("smartphone.txt");
%Matrices = SplitMat(D,Y);
%for i = 1:numel(Matrices)
%    disp(['Matrix ' num2str(i) ':']);
%    disp(Matrices{i});
%end

%D1 = selectSingle (D, 1);
%D1 = addOnesColumn(D1);
%----------------
%Hypothesis = [0;0];
%Example = D1(1, :);
%res = predictValue(Example, Hypothesis);
%disp(res);
%err = computeErrors(D, Y, Hypothesis);
%disp(err);
%cost = computeCost(D, Y, Hypothesis);
%disp(cost);
%Errors = computeErrors(D1, Y, Hypothesis);
%grad = computeGradient(D1, Errors);

%fprintf('The value is %.2f\n', grad);
%updatedHypo = updateHypothesis(Hypothesis, 0.1, grad);
%fprintf('The value is %.2f\n', updatedHypo);
[finalHypothesis, Costs] = gradientDescent("smartphone.txt");
%, 0.001, 1000, 0.01
%dis(gradDecent);

