function plot_frontier(risk, return_vals, optimal_risk, expected_returns, optimal_weights)
    figure;
    scatter(risk, return_vals, 10, 'b', 'filled'); hold on;
    plot(sqrt(optimal_risk), expected_returns' * optimal_weights, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    xlabel('Risk (Standard Deviation)'); ylabel('Expected Return');
    title('Efficient Frontier and Optimal Portfolio');
    legend('Random Portfolios', 'Optimal Portfolio');
end

% Train Neural Network
X = risk; 
Y = return_vals; 
net = fitnet(10); 
net = train(net, X', Y'); 

% Predict efficient frontier
risk_range = linspace(min(X), max(X), 100);
predicted_return = net(risk_range);

% Plot results
figure;
scatter(risk, return_vals, 10, 'b', 'filled'); hold on;
plot(risk_range, predicted_return, 'r', 'LineWidth', 2);
xlabel('Risk'); ylabel('Expected Return');
title('Efficient Frontier with ML Approximation');
legend('Monte Carlo Simulated', 'ML Approximation');
