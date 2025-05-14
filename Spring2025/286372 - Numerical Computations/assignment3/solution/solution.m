clc; clear;
f = input('');  % Example input: @(x) sin(x)
a = input('');
b = input('');
TOL = input('');

fcount = 0;
n = 1;
h = b - a;
half_h = h / 2;
m_ab = (a + b) / 2;
M_n = h * f(m_ab);
T_n = half_h * (f(a) + f(b));
T_2n = (T_n + M_n) / 2;
S_n = (4 * T_2n - T_n) / 3;

while true
    n = 2 * n;
    h = half_h;
    half_h = h / 2;
    x = zeros(n, 1);
    x(1) = a;
    
    for i = 1:n-1
        x(i+1) = x(i) + h;
    end

    M_n = 0;
    for i = 1:n
        M_n = M_n + h * f(x(i) + half_h);
        fcount = fcount + 1;
    end

    T_n = T_2n;
    T_2n = (T_n + M_n) / 2;
    S_2n = (4 * T_2n - T_n) / 3;

    if abs(S_2n - S_n) / 15 <= TOL
        I = (16 * S_2n - S_n) / 15;
        break
    end

    S_n = S_2n;
end

fprintf("%.5f\n", round(I, 5));
fprintf("%d\n", fcount);
