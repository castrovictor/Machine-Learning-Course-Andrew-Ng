function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);
%m es el número de filas, el número de centros. N el número de columnas, es decir, las coordenadas
%si es en 2d, n=2, si es en 3D, n = 3, para N dimensiones, n=N

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.

%Todo este bloque, de las lienas 30 a la 46, viene comentado
#{
%Recorro por filas, una para cada centro
for i=1:size(centroids)
  %Recorro los centros y si pertenece a dicho centro, calculo la distancia. Sino,
  %no hago nada, dejo el 0 con el que se ha inicializado
  for j=1:m
    cont = 0
    sum = 0
    %Si se cumple, pertenece al centro
    if(idx(j) == i)
      %Entonces calculo lo añado para calcular la media. Guardo la de cada coordenada y hago la media
      %para después añadirla a la matriz de centroids
      cont = cont + 1
      %Tendría que llevar un vector con una componente para cada coordenada, mejor lo vectorizo
      %con ayuda de a función mean, este código iba a salir más largo y FINDCLOSESTCENTROIDS
#}

%La matriz centroids almacena la media de las distancias
%Cada fila corresponde a un centro. Cada columna se corresponde con una diemnsión(x,y.. hasta n dimensiones)
%Por columnas se almacenan las medias de las dimensiones, no se almacena la media de las distancias ya calculadas
for k=1:K
  %X(idx==k, :) devuelve una matriz que tiene como filas solo las que pertenencen al centro
  %Mean, de la documentación de Octave: If x is a matrix, compute the mean for each column and return them in a row vector.
   centroids(k, :) = mean(X(idx==k, :));
end













% =============================================================


end
