function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


vec = [0.01 0.03 0.1 0.3 1 3 10 30]';

m = length(vec);

pred_error=zeros(m,m);

% for i = 1:m
% 	for j=1:m
% 		model= svmTrain(Xval, yval, vec(i), @(x1, x2) gaussianKernel(x1, x2, vec(j))); 
% 		predictions = svmPredict(model, Xval);
% 		pred_error(i,j) = mean(double(predictions ~= yval));
% 	end
% end

% [i,j]=find(pred_error==min(min(pred_error)));

pred_error;

% pred_error =

%    0.00000   0.01500   0.04500   0.10500   0.14500   0.14500   0.16000   0.18500
%    0.00000   0.01500   0.04500   0.10500   0.14500   0.14500   0.14500   0.18000
%    0.00000   0.01500   0.04500   0.07500   0.13500   0.15000   0.14500   0.15500
%    0.00000   0.01500   0.04500   0.05500   0.10000   0.15000   0.15000   0.14500
%    0.00000   0.01500   0.05000   0.05500   0.11500   0.11500   0.15000   0.14500
%    0.00000   0.01500   0.05500   0.06500   0.21000   0.12000   0.15000   0.14500
%    0.00000   0.00000   0.03000   0.07000   0.29000   0.24000   0.11500   0.16000
%    0.00000   0.00000   0.02000   0.08000   0.38000   0.38000   0.12500   0.15500


C = 1;
sigma = 0.1;



% =========================================================================

end
