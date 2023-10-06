function Y_aproximado = calcula_valor_polinomio(x, c, xi)
    n = length(c) - 1;
    for i = 1 : n
        aux = aux * (x - xi) % Potenciação
        Y_aproximado = Y_aproximado + c(i + 1) * aux
end