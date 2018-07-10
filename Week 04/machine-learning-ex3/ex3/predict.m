function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

a1 = [ones(m, 1) X];
layer1_out = a1* Theta1';  %Esto es z2 de las transparencias
a2 = sigmoid(layer1_out);
%Le añadimos la columna de 1s
a2 = [ones(m, 1) a2];
layer2_out = a2 * Theta2';  %Esto es el z3 de las transparencias
h_theta = sigmoid(layer2_out);
[max_val, p] = max(h_theta, [], 2);
% =========================================================================


end
