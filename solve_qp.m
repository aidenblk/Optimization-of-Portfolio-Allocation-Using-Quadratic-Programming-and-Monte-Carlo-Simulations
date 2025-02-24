function [optimal_weights, optimal_risk] = solve_qp(expected_returns, cov_matrix, num_assets)
    f = zeros(num_assets,1); % Linear term in objective function (not used in QP)
    H = 2 * cov_matrix; % Quadratic term for risk minimization
    Aeq = ones(1, num_assets); % Constraint: Sum of weights = 1
    beq = 1;
    lb = zeros(num_assets,1);
    ub = ones(num_assets,1);
    x0 = ones(num_assets,1) / num_assets; % Initial guess (equal weight)
    options = optimoptions('quadprog', 'Display', 'iter');
    [optimal_weights, optimal_risk] = quadprog(H, f, [], [], Aeq, beq, lb, ub, x0, options);
end
