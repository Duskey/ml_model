
%% ================ Part 3: Normal Equations ================

fprintf('Solving with normal equations...\n');
%% Load Data
d= load('x.txt');
X = d(:, 1:4);
y = d(:, 5);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');


% Estimate the price of a 1650 sq-ft, 3 br house
% ====================== YOUR CODE HERE ======================
price = 0; % You should change this
temp1=[ 1	18	15	3	5];
price =temp1*theta;
%14	15	2	4	16 prediction is 15.374
%7	7	1	0	0  prediction is 6
%11	12	2	6	9  prediction is 12
%15	15	2	2	16 prediction is 1
% 8 1 9 %18 error predicted value 7.356
 % 10 2 11 % 14 error predicted value 9.40
% ============================================================
save theta.txt theta;
fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using normal equations):\n $%f\n'], price);

