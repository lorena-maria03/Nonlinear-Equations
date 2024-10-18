f = @(x) sin(x) - x^3;  % define the nonlinear function
a = 0;                  % initial interval
b = 1;                  % initial interval
tol = 1e-6;             % tolerance for convergence
max_iter = 100;         % maximum number of iterations

% call the bisection method function
[root, iterations] = CN_bisection(f, a, b, tol, max_iter);

% display results
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