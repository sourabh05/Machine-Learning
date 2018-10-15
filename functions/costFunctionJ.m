function J = costFunctionJ(X, y, theta)
%X  is the design matrix containting the training examples.
%y is the class label
m = size(X,1); 		% number of training examples
predictions = X*theta; %predictions of hypothesis for m example
sqrErrors = (predictions - y).^2' 	%squared errors
J = (1/2*m) * sum(sqrErrors);