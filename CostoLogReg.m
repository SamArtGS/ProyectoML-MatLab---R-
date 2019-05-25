function [J, grad] = CostoLogReg(theta, X, y, lambda)

m = length(y);
J = 0;
grad = zeros(size(theta));

J = ( (1 / m) * sum(-y'*log(FuncionSigmoide(X*theta)) - (1-y)'*log( 1 - FuncionSigmoide(X*theta))) ) + (lambda/(2*m))*sum(theta(2:length(theta)).*theta(2:length(theta))) ;

grad = (1 / m) * sum( X .* repmat((FuncionSigmoide(X*theta) - y), 1, size(X,2)) );

grad(:,2:length(grad)) = grad(:,2:length(grad)) + (lambda/m)*theta(2:length(theta))';

end