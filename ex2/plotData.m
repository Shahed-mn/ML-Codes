function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

Ypos=find(y == 1);
Yneg=find(y == 0);

admitted=X(Ypos(:,1),1:2);
rejected=X(Yneg(:,1),1:2);


plot(admitted(:,1),admitted(:,2),'k+','LineWidth', 2,'MarkerSize', 7)
hold on
plot(rejected(:,1),rejected(:,2),'ro','LineWidth', 2,'MarkerSize', 7)
xlabel('Exam 1 score')
ylabel('Exam 1 score')
legend('Admitted','Rejected')





% =========================================================================



hold off;

end
