function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

theta1 = theta(1);
theta2 = theta(2);

% Compute the difference matrix between h(x) and y
diff = theta1 + theta2*X(:,2) - y;

% Square the difference matrix in place
sqdiff = diff .^ 2;

% Finish the cost function calculation
J = sum(sqdiff) / (2 * m);
% =========================================================================

end
