function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% Return the following variables 
J = 0;
grad = zeros(size(theta));


h = sigmoid(X * theta);     % hypothesis
diff = h - y;               % error

% The regularized cost function
J = 1 ./ m * ...
      sum(-y' * log(h) - (1 - y') * log(1 - h)) + ...
      lambda / 2. / m * sum( theta' * theta - theta(1) ^ 2);

% do not regularize theta_0
mask = ones(size(theta));
mask(1) = 0;

% The gradient
grad = 1 ./ m * X' * diff + lambda * (theta .* mask) / m; 

grad = grad(:);

end
