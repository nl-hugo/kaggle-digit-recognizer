
%% Initialization
%clear ; close all; clc

%% Setup the parameters for this step
input_layer_size  = 784;  % 28x28 Input Images of Digits

% Read the test data
[X, y] = loadData('data/test.csv', input_layer_size);

m = size(X, 1);
fprintf('\nNumber of rows: %d \n', m);

% Display first 100 data points
sel = X(1:100, :);
displayData(sel);

% Predict for One-vs-All 
pred = predictOneVsAll(all_theta, X);

% Add column with image index
idx = reshape(linspace(1, m, m), m, 1);
pred = [idx pred];

% Write results
header = 'ImageId,Label'; 
dlmwrite('results.csv', header, 'delimiter', '');
dlmwrite('results.csv', pred, 'delimiter', ',' , '-append');

