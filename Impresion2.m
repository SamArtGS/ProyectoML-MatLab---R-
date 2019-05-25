function Impresion2(X,Y)
    acepta = find(Y==1);
    rechaza = find(Y==0);
    plot(X(acepta,1),X(acepta,2),"bx","MarkerSize",5);
    hold on;
    plot(X(rechaza,1),X(rechaza,2),"ro","MarkerSize",5)
     
end