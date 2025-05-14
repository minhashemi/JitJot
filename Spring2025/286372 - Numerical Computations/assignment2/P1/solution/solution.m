x = input('');
f = input('');

D = newton_interpolate(x, f);

function D = newton_interpolate(x, f)
    n = length(x);
    D = zeros(n,1);

    if (length(f) ~= n)
        disp('The sizes of x and f are inconsistent.')
        return
    else

        D(1) = f(1);
        L = D;
        Lnew = zeros(2,1);
        
        for i = 2:n
            Lnew(1) = f(i);
            for j = 2:i
                Lnew(2) = ( Lnew(1) - L(j-1) ) / ( x(i) - x(i-j+1) );
                L(j-1) = Lnew(1);
                Lnew(1) = Lnew(2);
            end
            L(i) = Lnew(1);
            D(i) = Lnew(1);
        end
        disp(D)
    end
end
