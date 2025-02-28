% bisection
function [root iter] = bisection(f, a, b, tol, max_iter)
if f(a) * f(b) > 0
    error("No roots in this interval!")
end
iter =0;
while ((b-a)/2 > tol && iter < max_iter)
    x = (a+b)/2;
    if f(x) == 0
        break;
    elseif f(a) * f(x) < 0
        b = x;
    else
        a = x;
    end
    iter = iter + 1;
end
root = (a + b) / 2;
% root
fprintf("Root = %.6f\n", root);
% iter
fprintf("Iteration = %d\n", iter);
end