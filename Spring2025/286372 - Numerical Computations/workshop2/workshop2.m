%% 📐 Differentiation

%% Symbolic Differentiation (requires Symbolic Toolbox)
syms x
diff(sin(x))          % Returns cos(x)
diff(x^2 + 3*x + 2)   % Returns 2*x + 3

%% Numeric Approximation (Finite Difference Method)
f = @(x) x.^2 + 3*x;
h = 1e-5;
x0 = 2;
df = (f(x0 + h) - f(x0)) / h;  % Approximates derivative at x0

%% ∫ Integration

%% Symbolic Integration
syms x
int(x^2)              % Returns (1/3)*x^3
int(sin(x), x, 0, pi) % Returns 2

%% Numerical Integration (Trapezoidal Rule)
x = 0:0.1:1;
y = x.^2;
area = trapz(x, y);   % Approximates ∫x² dx from 0 to 1

%% Numerical Integration using `integral` function
f = @(x) x.^2;
result = integral(f, 0, 1);     % Returns 1/3 ≈ 0.3333

%% 📈 Interpolation

%% Linear Interpolation
x = [1 2 3];
y = [2 4 6];
xi = 1.5;
yi = interp1(x, y, xi);  % Returns 3

%% Other Interpolation Methods
interp1(x, y, xi, 'spline')    % Spline interpolation
interp1(x, y, xi, 'nearest')   % Nearest neighbor interpolation

%% 📉 Mean Square Error (MSE)

% Used to evaluate fit quality:
y_true = [1 2 3];
y_pred = [1.1 1.9 3.2];
mse = mean((y_true - y_pred).^2);  % ≈ 0.0233
