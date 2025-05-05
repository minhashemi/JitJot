% integral from a to b of exp(-x^2) using trapezoid method

%% function
f = @(x) exp(-x.^2);

%% constants and var
a = 0; 
b = 1;
n = 100;

%% trapezoid loop

s = (f(a) + f(b))/2;
h = (b - a) / n;

for i=1:n-1
    s = s + f(a + i * h);
end
s = s * h;

disp(s);
