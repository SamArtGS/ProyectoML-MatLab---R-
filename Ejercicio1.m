clear
clc
A = csvread('linear_data.csv',1,0);

X = A(:,2);
Y = A(:,3);
plot(X, Y, "r.", 'MarkerSize', 10);
coeffs = polyfit(X, Y, 1);

tamanio = length(Y);
theta = zeros(2,1);
iteraciones = 1500; 

Alpha = 0.01;

X = [ones(tamanio,1),A(:,2)];
J = CostoComputacional(X,Y,theta);

[theta,Jh] = GradienteDescenso(X,Y,theta,Alpha,iteraciones);

hold on;
plot(X(:,2),X*theta, '-');
hold off;
