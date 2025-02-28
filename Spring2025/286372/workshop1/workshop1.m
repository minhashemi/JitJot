% MATLAB Basics

%% Preliminaries
% Semicolon suppresses output
a = 2;
A = 3; % A is stored but not printed

disp(['a = ', num2str(a)]);
disp(['A = ', num2str(A)]);

% Clear and Clc
clc; % Clears command window
clear var; % Clears specific variable
clear all; % Clears all variables

% MATLAB is case sensitive: 'a' and 'A' are different.

% MATLAB as a calculator
result1 = 2 + 3;
disp(['2 + 3 = ', num2str(result1)]);

result2 = 5 * (2 ^ 3) / 4;
disp(['5 * (2 ^ 3) / 4 = ', num2str(result2)]);

%% Math Functions
% Trigonometric Functions (Radians)
sin_value = sin(pi/2);
disp(['sin(pi/2) = ', num2str(sin_value)]);

cos_value = cos(0);
disp(['cos(0) = ', num2str(cos_value)]);

tan_value = tan(pi/4);
disp(['tan(pi/4) = ', num2str(tan_value)]);

% Inverse Trigonometric Functions
asin_value = asin(1);
disp(['asin(1) = ', num2str(asin_value)]);

acos_value = acos(0);
disp(['acos(0) = ', num2str(acos_value)]);

atan_value = atan(1);
disp(['atan(1) = ', num2str(atan_value)]);

% Logarithmic Functions
log_value = log(10); % Natural log
disp(['log(10) = ', num2str(log_value)]);

log10_value = log10(10); % Base 10 log
disp(['log10(10) = ', num2str(log10_value)]);

log2_value = log2(8); % Base 2 log
disp(['log2(8) = ', num2str(log2_value)]);

% Exponential Function
exp_value = exp(1);
disp(['exp(1) = ', num2str(exp_value)]);

% Square Root
sqrt_value = sqrt(16);
disp(['sqrt(16) = ', num2str(sqrt_value)]);

% Absolute Value
abs_value = abs(-5);
disp(['abs(-5) = ', num2str(abs_value)]);

% Random Number Generation
rand_num = rand(); % Random number between 0 and 1
disp(['rand() = ', num2str(rand_num)]);

rand_matrix = rand(2,3); % 2x3 matrix of random numbers
disp('rand(2,3) = ');
disp(rand_matrix);

% Matrix Functions
zero_matrix = zeros(3,2); % 3x2 matrix of zeros
disp('zeros(3,2) = ');
disp(zero_matrix);

one_matrix = ones(3,2); % 3x2 matrix of ones
disp('ones(3,2) = ');
disp(one_matrix);

identity_matrix = eye(3); % 3x3 identity matrix
disp('eye(3) = ');
disp(identity_matrix);

% Determinant and Inverse
a = [1 2; 3 4];
disp('Matrix a = ');
disp(a);

det_a = det(a);
disp(['det(a) = ', num2str(det_a)]);

inv_a = inv(a);
disp('inv(a) = ');
disp(inv_a);

% Eigenvalues and Eigenvectors
eig_values = eig(a);
disp('eig(a) = ');
disp(eig_values);

%% Control Flow and Loops
% If-Else Condition
x = 5;
if x > 0
    disp('Positive');
elif x < 0
    disp('Negative');
else
    disp('Zero');
end

% While Loop
x = 0;
while x < 10
    x = x + 1;
    disp(['x = ', num2str(x)]);
end

% For Loop
for i = 1:5
    disp(['i = ', num2str(i)]);
end

% Logical Operators
% & (Element-wise AND), && (Short-circuit AND, scalars only)
% | (Element-wise OR), || (Short-circuit OR, scalars only)
% ~=, ==, <, >, <=, >= (Comparisons)

%% Matrices and Indexing
% Matrix Creation
a = [1 2 3; 4 5 6];
disp('Matrix a = ');
disp(a);

% Matrix Indexing
value = a(2,3);
disp(['a(2,3) = ', num2str(value)]);

% Removing Columns or Rows
a(:,2) = []; % Removes the 2nd column
disp('Matrix after removing column 2:');
disp(a);

%% Functions
% Simple Function
y = myFunction(3);
disp(['myFunction(3) = ', num2str(y)]);

function y = myFunction(x)
    y = x^2 + 5;
end

% Multiple Outputs
[y1, y2] = myMultiOutputFunction(2, -3);
disp(['myMultiOutputFunction(2, -3) = y1: ', num2str(y1), ', y2: ', num2str(y2)]);

function [y1, y2] = myMultiOutputFunction(x1, x2)
    y1 = x1^2 + 4;
    y2 = abs(x2 * 3 + x1);
end

