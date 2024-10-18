function [root, iter] = CN_newton(f, df, x0, tol, max_iter)

    % initialize
    xk = x0;
    iter = 0;
    % calculate the derivative at the initial guess once
    df0 = df(x0);
    
    % iterate until the maximum number of iterations is reached
    while iter < max_iter
        % calculate the next approximation using newton formula
        xk_next = xk - f(xk) / df0;
        
        % check for convergence
        if abs(xk_next - xk) < tol
            break;
        end
        
        % update the current approximation
        xk = xk_next;
        % increment the iteration counter
        iter = iter + 1;
    end
    
    % set the root to the last approximation
    root = xk;
    
    % display the result
    fprintf('Root found at x = %.8f after %d iterations\n', root, iter);
end
