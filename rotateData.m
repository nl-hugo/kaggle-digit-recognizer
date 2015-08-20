function r = rotateData(X)
%ROTATEDATA Rotates the images in the data set

r = zeros(size(X));                             % the matrix to return
image_dim = round(sqrt(size(X, 2)));            % the dimension of an image 
                                                % (assumes square images!)

for i = 1:size(X, 1)

  c = X(i, :);                                  % one row is one image
  c = fliplr(rotdim( ...                        % flip and rotate
      reshape(c, image_dim, image_dim), -1));  
  r(i, :) = c(:)';                              % write back into X

end
