% Load asset data
[expected_returns, cov_matrix, num_assets] = define_data();

% Solve quadratic programming problem
[optimal_weights, optimal_risk] = solve_qp(expected_returns, cov_matrix, num_assets);

% Run Monte Carlo simulation
num_sim = 10000;
[risk, return_vals, weights] = monte_carlo(expected_returns, cov_matrix, num_assets, num_sim);

% Plot the efficient frontier
plot_frontier(risk, return_vals, optimal_risk, expected_returns, optimal_weights);
