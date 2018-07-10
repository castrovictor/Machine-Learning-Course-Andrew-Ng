function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

%El resultado tengo que meterlo en sim, que es por donde se va a devolver
%Utilizo la formula proporcionada en el pdf de los ejercicios

sum = 0
aux = 0
n = length(x1)

%Calculo la norma 2 de la diferencia de los dos vectores
for k=1:n
  aux = x1(k) - x2(k)
  aux = aux * aux
  sum = sum + aux
end

sim = exp((-sum) / (2*sigma*sigma))








% =============================================================

end
