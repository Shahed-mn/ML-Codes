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
iterations = 1500;
alpha = 0.01;

figure
for i=1:iterations
    
    hT=(theta')*(X');
    h=hT';
    J=(1/(2*m))*sum((h-y).^2);
    plot(i,J,'*','Color','b')
    hold on

    theta(1)=theta(1)-(alpha/m)*sum((h-y).*X(:,1));
    theta(2)=theta(2)-(alpha/m)*sum((h-y).*X(:,2));
end




% =========================================================================

end
