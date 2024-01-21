# Machine Learning Course Implementation

## Overview
This repository contains the implementation of a simple linear regression machine learning model, developed by Jacob Zack and Rami Abu Rabia. The primary goal is to predict values based on features using the gradient descent optimization algorithm.

## Contents
1. **addOnesColumn**
   - Adds a column of ones to the input matrix.
   - Usage: `D1 = addOnesColumn(D1)`

2. **computeCost**
   - Computes the cost of the hypothesis for a given dataset.
   - Usage: `cost = computeCost(Data, Y, Hypothesis)`

3. **computeErrors**
   - Computes the errors between predicted and actual values.
   - Usage: `Errors = computeErrors(Data, Y, Hypothesis)`

4. **computeGradient**
   - Computes the gradient for each feature.
   - Usage: `Gradient = computeGradient(Data, Errors)`

5. **gradientDescent**
   - Performs gradient descent to optimize the hypothesis parameters.
   - Usage: `[finalHypothesis, Costs] = gradientDescent(filename, alpha, max_iter, threshold)`

6. **loadData**
   - Loads data from a specified file and separates features (D) and labels (Y).
   - Usage: `[D, Y] = loadData(filename)`

7. **predictValue**
   - Predicts a value based on the example and hypothesis.
   - Usage: `value = predictValue(Example, Hypothesis)`

8. **selectSingle**
   - Selects a single feature column from the dataset.
   - Usage: `D1 = selectSingle(D, n)`

9. **SplitMat**
   - Splits the input matrix D into individual matrices for each feature.
   - Usage: `Matrices = SplitMat(D, Y)`

10. **updateHypothesis**
    - Updates the hypothesis parameters using the gradient and learning rate.
    - Usage: `UpdateHypothesis = updateHypothesis(Hypothesis, alpha, Gradient)`

## Usage Example
```matlab
[D, Y] = loadData("smartphone.txt");
[finalHypothesis, Costs] = gradientDescent("smartphone.txt", 0.1, 1000, 0.01);
```

## Notes
- Ensure that the input dataset ("smartphone.txt" in this case) is formatted correctly with features and labels.
- Adjust hyperparameters such as learning rate (`alpha`), maximum iterations (`max_iter`), and convergence threshold (`threshold`) according to specific requirements.

## Contributors
- Jacob Zack
- Rami Abu Rabia
