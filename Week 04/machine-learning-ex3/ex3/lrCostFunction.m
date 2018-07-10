function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations.
%
% Hint: When computing the gradient of the regularized cost function,
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta;
%           temp(1) = 0;   % because we don't add anything for j = 0
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

  %   temp = theta;
  %   temp(1) = 0;   % because we don't add anything for j = 0


  %ESTO DEBERIA IR, TIENE QUE HABER ALGUN ERROR DE SINTAXIS (ES LO MISMO QUE EL OTRO CODIGO QUE FUNCIONA)
  %Actualización: El fallo creo que estaba en que he puesto Log en vez de log, aunque ya no lo cambio, el código es casi idéntico
  %   htheta = sigmoid(X * theta);
    %Primero se hizo sin regularizar como decía el pdf, ya que no daba puntuación, lo cambié a regularizado(luego vi que había que subirlo regularizado)
    %La expresión regularizada se puede consultar en lecture7
  %  J = (-1 / m) * sum(y .* log(htheta) + (1 - y) .* log(1 - htheta)) + (lambda / (2 * m))*sum(temp.^2);
  %   error = htheta - y;
    %La siguiente expresión corresponde a la diapositiva 16 de lecture7
  %   grad = (1/m) * (X' * error) + (lambda/m)*temp

  tempTheta = theta;
  tempTheta(1) = 0;

  J = (-1 / m) * sum(y.*log(sigmoid(X * theta)) + (1 - y).*log(1 - sigmoid(X * theta))) + (lambda / (2 * m))*sum(tempTheta.^2);
  temp = sigmoid (X * theta);
  error = temp - y;
  grad = (1 / m) * (X' * error) + (lambda/m)*tempTheta;
% =============================================================

grad = grad(:);

end
