function [root, iter] = CN_secant(f, x0, x1, tol, max_iter)

    % initialize variables
    iter = 0;
    
    % iteration loop
    while iter < max_iter
        % calculate the function values at x0 and x1
        f_x0 = f(x0);
        f_x1 = f(x1);
        
        % Check for division by zero
        if f_x1 == f_x0
            error('Division by zero in secant method');
        end
        
        % calculate the next approximation using the secant method formula
        xk = x1 - (f_x1 * (x1 - x0)) / (f_x1 - f_x0);
        
        % check for convergence
        if abs(xk - x1) < tol
            break;
        end
        
        % update the values for the next iteration
        x0 = x1;
        x1 = xk;
        iter = iter + 1;
    end
    
    % set the root to the last approximation
    root = x1;
    
    % display the result
    fprintf('Root found at x = %.8f after %d iterations\n', root, iter);
end

