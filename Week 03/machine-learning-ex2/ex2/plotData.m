function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% Find Indices of positive and negative examples
pos = find(y==1);
neg = find(y==0); %Find returns a vector with the position of the elements (0 in this case)
%Nos va a devolver, de y, que es nuestro vector de 0 y 1, aquellas posiciones que sean 1 y 0 respectivamente
%las almacena como un vector, en pos y en neg

%Plot examples
plot(X(pos, 1), X(pos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
%Pintamos los x1,x2 que tengan un 1 en su fila de la y, lo mismo con 0. Lo otro son opciones de color, anchura...







% =========================================================================



hold off;

end
