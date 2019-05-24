function [J, grad] = CostoLogistica(Theta, X, Y)
    m = size(X,1);
    X = [ones(m,1) X];
    h = FuncionSigmoide(X*Theta);
    
    J = -(1/m)*sum(Y.* log(h) + (1-Y).*log(1-h));
    
    grad = zeros(size(Theta,1),1);
    
    for i = 1: size(grad)
        grad(i) = (1/m) *sum((h-Y)'*X(:,i));
    end
     
end