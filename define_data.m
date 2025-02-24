function [expected_returns, cov_matrix, num_assets] = define_data()
    expected_returns = [0.12; 0.18; 0.14; 0.10; 0.15]; % Expected annual returns
    cov_matrix = [0.1, 0.02, 0.03, 0.04, 0.05;
                  0.02, 0.15, 0.06, 0.07, 0.08;
                  0.03, 0.06, 0.12, 0.09, 0.10;
                  0.04, 0.07, 0.09, 0.08, 0.06;
                  0.05, 0.08, 0.10, 0.06, 0.15]; % Covariance matrix of returns
    num_assets = length(expected_returns);
end
