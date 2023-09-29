function R = calcula_valor_polinomio(a, x)
#Calcula o vetor de valores do polinomio para o vetor x
    n = length(a) - 1;
    for k = 1:length(x) #k valores de x
        b(1) = a(1);
        for i = 2:n+1
            b(i) = a(i) + x(k) * b(i-1);
        end
        R(k) = b(n+1); #k valores do polinomio (R)
    end
    R = transpose(R);
end