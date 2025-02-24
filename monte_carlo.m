function [risk, return_vals, weights] = monte_carlo(expected_returns, cov_matrix, num_assets, num_sim)
    risk = zeros(num_sim,1);
    return_vals = zeros(num_sim,1);
    weights = zeros(num_sim, num_assets);
    for i = 1:num_sim
        w = rand(num_assets, 1);
        w = w / sum(w); % Normalize weights to sum to 1
        weights(i, :) = w;
        return_vals(i) = expected_returns' * w;
        risk(i) = sqrt(w' * cov_matrix * w);
    end
end
