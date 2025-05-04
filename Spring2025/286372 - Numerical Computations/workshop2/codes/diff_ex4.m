% Create a 3-by-3 matrix, then compute the first-order difference between the columns.

Y = [1 2 4; 5 6 8; 12 16 15];
X = diff(Y, 1, 2);
disp(X);