function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


%El punto detrás del primer 1 es para que lo haga elemento a elemento
g = 1./(1 + e.^(-1*z)); %Hay que poner . delante de e porque ^ no lo hace elemento a elemento. exp Está configurado para que lo haga elemento a elemento
%g = 1./(1 + exp(-1*z));
% =============================================================

end
