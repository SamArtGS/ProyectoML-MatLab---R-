clear
clc
A = csvread('regresion_logistica.csv',1,0);

X = A(:,1:2);
Y = A(:,3);

impresionN(X,Y);

[m,n] = size(X);
X = MapeoDelFeature(X(:,1), X(:,2));
lambda = 1;
theta = zeros(size(X, 2), 1);

[J, grad] = CostoLogReg(theta, X, Y, lambda);
theta = zeros(size(X, 2), 1);
lambda = 0;
opciones = optimset('GradObj', 'on', 'MaxIter', 400);


[thetaO, Jh, banderadeSalida] = fminunc(@(t)(CostoLogReg(t, X, Y)), theta, opciones);

plotDecisionBoundary(thetaO, X, Y);
hold off
p = predict(theta, X);