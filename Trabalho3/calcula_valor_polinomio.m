function Y_aproximado = calcula_valor_polinomio(x, c, xi)
    n = length(c) - 1;
    for elem = 1 : length(x)
        aux = 1; % esse aux é o resultado de (x-xi)
        elem = 1; % Y_aproximado = [ elem = 1, elem = 2, elem = 3, elem = 4... ]
        Y_aproximado(elem) = c(1);
        for i = 1 : n
            aux = aux * (x(elem) - xi);
            Y_aproximado(elem) = Y_aproximado + c(i + 1) * aux;
        end
    end
    for k = 1 : length(x)
        disp(x(k))
end 