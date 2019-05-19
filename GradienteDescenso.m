function [theta, Jh] = GradienteDescenso(X,Y,theta,alpha,iteraciones)
    m = length(Y);
    Jh = zeros(iteraciones,1);
    
    for i = 1: iteraciones
        h = X*theta;
        t1 = theta(1) - alpha*(1/m)*sum(h-Y);
        t2 = theta(2) - alpha*(1/m)*sum((h-Y).*X(:,2));
        theta(1) = t1;
        theta(2) = t2;
        Jh(i) = CostoComputacional(X,Y,theta);
    end
end
