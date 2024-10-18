function [root, iterations] = CN_bisection(f, a, b, tol, max_iter)

    % check if func(a) and func(b) have opposite signs
    if sign(f(a)) == sign(f(b))
        error('Function has same sign at endpoints. Bisection method cannot guarantee convergence.');
    end

    % initialize variables
    iterations = 0;
    error = inf;
    
    % bisection loop
    while error > tol && iterations < max_iter
        iterations = iterations + 1;
        
        % bisect the interval
        c = (a + b) / 2;
        
        % compute function value at midpoint
        fc = f(c);
        
        % check convergence
        if abs(fc) < tol
            root = c;
            error = abs(fc);
            break;
        end
        
        % update interval [a, b]
        if sign(f(a)) * sign(fc) < 0
            b = c;
        else
            a = c;
        end
        
        % update error
        error = abs(b - a);
    end
    
    % output results
    root = (a + b) / 2;
end
