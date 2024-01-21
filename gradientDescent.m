%Jacob Zack , Rami Abu Rabia 
function [finalHypotheses, allCosts] = gradientDescent(filename, alpha, max_iter, threshold)
    %Default values:
    if ~exist('alpha', 'var')
        alpha = 0.1;
    end
    if ~exist('max_iter', 'var')
        max_iter = 1000;
    end
    if ~exist('threshold', 'var')
        threshold = 0.001;
    end
    [D, Y] = loadData(filename);
    FeaturesNumber = size(D, 2);
    finalHypotheses = zeros(FeaturesNumber, 1);
    %An empty cell array:
    allCosts = cell(FeaturesNumber, 1);
    %For each single feature:
    for i = 1:FeaturesNumber
        % select single feature
        D1 = selectSingle(D, i);
        D1 = addOnesColumn(D1);
        Hypothesis = zeros(size(D1, 2), 1);
        Costs = [];
        cost_J = inf;
        iter = 1;
        Improving = true;%to make sure that there is any improvment

        while iter < max_iter && Improving
            cost_J = computeCost(D1, Y, Hypothesis);
            Errors = computeErrors(D1, Y, Hypothesis);
            Gradient = computeGradient(D1, Errors);
            Costs = [Costs, cost_J]; %adding cost_J to the array
            Hypothesis = updateHypothesis(Hypothesis, alpha, Gradient);

            if iter ~= 1 %in the first iteration we cant check for improvment
                improvement = abs(Costs(end - 1) - cost_J);
                if improvement < threshold
                    fprintf('Gradient descent terminating after %d iterations. Improvement was: %f - below threshold %f\n', iter, improvement, threshold);
                    Improving = false;
                    iter = iter - 1; %at line 45 there are addition by 1 to iter, if this statement occured and we need to decrease iter so the statement in line 48 cant be also true
                end
            end

            iter = iter + 1;
        end

        if iter >= max_iter
            fprintf('Gradient descent terminating after %d iterations\n', iter);
        end
        %updating the i Hypothesesy for feature i
        finalHypotheses(i) = Hypothesis(end);
        allCosts{i} = Costs;

        figure;
        scatter(1:length(Costs), Costs);
        xlabel('Number of Iterations');
        ylabel('Cost');
        title(sprintf('(Cost ,Iterations) for Feature %d', i));
    end

end
