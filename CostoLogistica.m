function [J, grad] = CostoLogistica(theta, X, y)
    m = length(y);
    X = [ones(m, 1) X];
    J = (1 / m) * sum( -y'*log(FuncionSigmoide(X*theta)) - (1-y)'*log( 1 - FuncionSigmoide(X*theta)) );
    grad = (1 / m) * sum( X .* repmat((FuncionSigmoide(X*theta) - y), 1, size(X,2)) );
end