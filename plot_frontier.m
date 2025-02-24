function plot_frontier(risk, return_vals, optimal_risk, expected_returns, optimal_weights)
    figure;
    scatter(risk, return_vals, 10, 'b', 'filled'); hold on;
    plot(sqrt(optimal_risk), expected_returns' * optimal_weights, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    xlabel('Risk (Standard Deviation)'); ylabel('Expected Return');
    title('Efficient Frontier and Optimal Portfolio');
    legend('Random Portfolios', 'Optimal Portfolio');
end
