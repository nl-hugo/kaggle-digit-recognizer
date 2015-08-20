
%% Initialization
clear ; close all; clc

%% Setup the parameters for this step
input_layer_size  = 784;  % 28x28 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)
num_samples = 5000;       % use 5000 training samples
                        
% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

% Read the training data, stored in arrays X, y
%[X, y] = loadData('data/train.csv', input_layer_size); 
[X, y] = loadData('data/train_10000.csv', input_layer_size); 

% Randomly choose 100 training samples
rand_indices = randperm(size(X, 1));
X = X(rand_indices(1:num_samples), :);
y = y(rand_indices(1:num_samples), :); %% REMOVE

m = size(X, 1);
fprintf('\nNumber of rows: %d \n', m);

% Display first 100 data points
sel = X(1:100, :);
displayData(sel);

fprintf('\nTraining One-vs-All Logistic Regression...\n')

lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);


% Predict for One-Vs-All
pred = predictOneVsAll(all_theta, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

