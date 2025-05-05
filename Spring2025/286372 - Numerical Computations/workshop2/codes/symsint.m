% symbolic integration

syms x;
syms f(x);

f(x) = 4*x;
F(x) = int(f(x), x);
disp(F(x));