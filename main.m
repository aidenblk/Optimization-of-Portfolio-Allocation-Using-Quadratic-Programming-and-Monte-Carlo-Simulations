clc; clear;

% Add current directory and subdirectories to MATLAB path
addpath(genpath(pwd));

% Load asset data
[expected_returns, cov_matrix, num_assets] = define_data();

% Run Monte Carlo simulation
num_sim = 10000;
[risk, return_vals, weights] = monte_carlo(expected_returns, cov_matrix, num_assets, num_sim);

Mdl_risk = fitrsvm(weights, risk);         
Mdl_return = fitrsvm(weights, return_vals);

% Generate new random portfolios
num_new = 500;
new_weights = rand(num_new, num_assets);
new_weights = new_weights ./ sum(new_weights, 2);

% Predict risk-return for new portfolios using ML
predicted_risk = predict(Mdl_risk, new_weights);
predicted_return = predict(Mdl_return, new_weights);

% Train a polynomial regression model (4th-degree polynomial)
p = polyfit(risk, return_vals, 4); 
risk_range = linspace(min(risk), max(risk), 100);
predicted_frontier = polyval(p, risk_range); 
[optimal_weights, optimal_risk] = solve_qp(expected_returns, cov_matrix, num_assets);

figure;
scatter(risk, return_vals, 10, 'b', 'filled'); hold on; 
scatter(predicted_risk, predicted_return, 10, 'g', 'filled'); 
plot(risk_range, predicted_frontier, 'r', 'LineWidth', 2); 

% Plot Optimal Portfolio
optimal_return = expected_returns' * optimal_weights;
plot(sqrt(optimal_risk), optimal_return, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

& Labels & Title
xlabel('Risk (Standard Deviation)');
ylabel('Expected Return');
title('Monte Carlo vs AI-Predicted Portfolios & Efficient Frontier');
legend('Monte Carlo Simulated', 'ML-Predicted Portfolios', 'Polynomial Fit Efficient Frontier', 'Optimal Portfolio');
