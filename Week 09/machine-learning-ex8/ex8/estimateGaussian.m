function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X),
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
%

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

% 1.2 Estimating parameters for a Gaussian

%Como cada fila es un punto, cada columna representa un feature
%Para calcular la media usamos la funcion mean de octave. COnsultar documentación de octave
%para más información. Se almacena en un vector fila, pude que lo devolvamos en un vector columna
%Para ello trasponemos lo que devuelve mean
mu = (mean(X))'

%Ahora tenemos que calcular la varianza para cada feature
%El 1 es para que normalice con N (ver documentación Octave)
sigma2 = var(X,1)











% =============================================================


end
