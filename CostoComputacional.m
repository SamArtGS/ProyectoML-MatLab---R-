function J = CostoComputacional(X, Y, theta)
    m = length(Y);
    h = X*theta;
    J = 1/(2*m)*log(prod(exp((h-Y).^2))); 
end
