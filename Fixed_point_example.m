f = @(x)  cos(x);   % define the nonlinear function
x0 = 0;             % initial guess
tol = 1e-6;         % tolerance for convergence
max_iter = 1000;    % maximum number of iterations

% call the function to find the fixed point
[x, iter] = CN_fixed_point(f, x0, tol, max_iter);

% display results
fprintf('Fixed point found at x = %.8f after %d iterations.\n', x, iter);

% plot the function
x = linspace(root-2, root+2, 400);
y = arrayfun(f, x);  
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(root, f(root), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
grid on;
xlabel('x');
ylabel('f(x)');
title('Graph of the function and its root');
legend('f(x)', 'Root');
hold off;