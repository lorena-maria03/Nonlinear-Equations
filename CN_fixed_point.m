function [x, iter] = CN_fixed_point(f, x0, tol, max_iter)
    
    % initialize
    iter = 0;
    x = x0;
    
    % iteration loop
    while true
        x_new = f(x); % compute next iteration
        iter = iter + 1;
        
        % check convergence
        if abs(x_new - x) < tol
            x = x_new;
            break;
        end
        
        % update x for next iteration
        x = x_new;
        
        % check for maximum iterations
        if iter >= max_iter
            warning('Maximum number of iterations reached without convergence');
            break;
        end
    end
end
