% Create a 3-by-3 matrix, then compute the first difference between the rows.

Y = [2 5 6; 2 5 8; 9 8 12];
X = diff(Y, 1, 1);
disp(X);