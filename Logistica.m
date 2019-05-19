clear
clc
A = csvread('regresion_logistica.csv',1,0);

X = A(:,1:2);
Y = A(:,3);

impresionN(X,Y);

[m,n] = size(X);
theta = zeros((n+1),1);
[J,grad] = CostoLogistica(theta,X,Y);