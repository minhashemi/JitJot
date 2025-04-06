function [S_n_a , S_n_b] = Q2_E1_2021_Fall(n)
    S_n_b = 1;
    S_n_a = 0;
    for i=1:n
        S_n_b = S_n_b + 1/(i^2 + i);
        j = n - i + 1;
        S_n_a = S_n_a + 1/(j^2 + j);
    end
    S_n_a = S_n_a + 1;
end