f = @(x) x^3 - x - 2;        % define the nonlinear function
df = @(x) 3*x^2 - 1;         % define the derivative of the function
x0 = 1.5;                    % initial guess
tol = 1e-6;                  % tolerance for convergence
max_iter = 100;              % maximum number of iterations

% call Newton's method
[root, iterations] = CN_newton(f, df, x0, tol, max_iter);
disp(['Root: ', num2str(root)]);
disp(['Iterations: ', num2str(iterations)]);

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