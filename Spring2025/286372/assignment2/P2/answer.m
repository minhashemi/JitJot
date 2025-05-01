
clear; clc;

x = input('');
y = input('');

best_rmse = inf;
best_degree = 0;
best_coeffs = [];

d_max = 100;
for d = 1:d_max
    A = zeros(length(x), d+1);
    for i = 0:d
        A(:, d+1 - i) = x.^i;
    end

    coeffs = (A' * A) \ (A' * y);

    y_pred = A * coeffs;

    rmse = sqrt(mean((y - y_pred).^2));

    if rmse < best_rmse
        best_rmse = rmse;
        best_degree = d;
        best_coeffs = coeffs;
    end
end

% ---------- OUTPUT ----------
disp(best_degree);
disp(best_rmse);
disp(best_coeffs);
