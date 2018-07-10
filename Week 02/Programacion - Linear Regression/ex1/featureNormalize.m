function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


%Primera versión: menos general, ya que lo parto en dos porque sé que son dos variables
%Primero calculo la media de los valores
%avg_size = mean(X(:,1));
%avg_bedrooms = mean(X(:,2);
%sigma_size = std(X(:,1));
%sigma_bedrooms = mean(X(:,2));

%for i = 1:size(X,2)
%  X_norm(:,1) = (X(i,1) - avg_size) / sigma_size;
%end

%for i = 1:size(X,2)
%  X_norm(:,2) = (X(i,2) - avg_bedrooms) / sigma_bedrooms;
%end


%Segunda versión: igual pero las medias y varianzas las almaceno en vectores para que sea más general el ejercicio
avg = mean(X);
sigma = std(X);

for i = 1:size(X,2)
    X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
end


%A cada elemento le quito la media, lo almaceno en e

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma.
%
%               Note that X is a matrix where each column is a
%               feature and each row is an example. You need
%               to perform the normalization separately for
%               each feature.
%
% Hint: You might find the 'mean' and 'std' functions useful.
% ============================================================

end
