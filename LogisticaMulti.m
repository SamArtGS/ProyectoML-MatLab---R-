clear
clc
A = readmatrix('competencia.csv');

X1 = A(:,3);
X2 = A(:,6);
X = [X1 X2];

Y = A(:,34);

impresionN(X,Y);
hold on

[m,n] = size(X);
theta = zeros((n+1),1);
[J, grad] = CostoLogistica(theta,X,Y);

opciones = optimset('GradObj', 'on', 'MaxIter', 1000);

[thetaP, J] = fminunc(@(t)(CostoLogistica(t, X, Y)), theta, opciones);

plotDecisionBoundary(thetaP, X, Y);