function [root, iter] = HW1_P1_STDNUM()
    f_str = strtrim(input('', 's'));  
    f = str2func(f_str);  

    df_str = strtrim(input('', 's'));  
    df = str2func(df_str);  

    x0 = str2double(strtrim(input('', 's')));  % Initial guess
    tol = str2double(strtrim(input('', 's'))); % Tolerance
    max_iter = str2double(strtrim(input('', 's'))); % Max iterations

    % Check for valid numeric inputs
    if isnan(x0) || isnan(tol) || isnan(max_iter)
        error('Invalid numeric inputs. Ensure x0, tol, and max_iter are numbers.');
    end

    % Initialize iteration counter
    iter = 0;

    % Newton's Method Loop
    while iter < max_iter
        try
            fx = f(x0);  % Evaluate function at x0
            dfx = df(x0); % Evaluate derivative at x0
        catch
            error('Error evaluating function. Ensure f and df are valid functions.');
        end

        % Ensure dfx is a valid number before division
        if ~isnumeric(dfx) || isnan(dfx) || isinf(dfx)
            error('Invalid derivative evaluation. Ensure df is a valid function.');
        end

        % Check if derivative is too small
        if abs(dfx) < 1e-12  
            warning('Derivative is too close to zero. Stopping iteration.');
            break;
        end
        
        % Newton's update step
        x1 = x0 - fx / dfx;
        iter = iter + 1;
        
        % Check convergence
        if abs(x1 - x0) < tol * max(1, abs(x1))
            break;
        end
        
        % Update x0 
        x0 = x1;
    end

    root = x0; 
    fprintf('%.6f\n', root);  
    fprintf('%d\n', iter);    
end
