%Jacob Zack , Rami Abu Rabia 
function [UpdateHypothesis] = updateHypothesis(Hypothesis, alpha, Gradient)
    UpdateHypothesis = Hypothesis - alpha * Gradient;
end