% symbolic func

syms x;
syms f(x);

f(x) = x^3 + 3*x^2 - x + 4;
dfdx = diff(f(x), x, 3);
disp(dfdx);