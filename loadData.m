function [X, y] = loadData(f, n)
%LOADDATA Loads data from the specified file
%   [X, y] = LOADDATA(f, n) loads data from file f in output arguments X and y,
%   whereby X is the pixel data and y are the corresponding labels. Note that y
%   is only filled when the file is a train file with more than n columns. 

X = csvread(f);   % read data from file
X = X(2:end, :);  % remove the header
m = length(X);    % number of training examples

% Initial values for labels
y = zeros(m, 1);

% Identify training sets
if size(X, 2) > n
  y = X(:, 1);      % first column is the label, for training sets
  X = X(:, 2:end);  % other columns are pixel data
end

% TODO: digits are displayed flipped and mirrored

end