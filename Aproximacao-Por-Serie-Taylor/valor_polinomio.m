function ya = valor_polinomio(xp, c , xi)

    % Pseudo-codigo:
    % Primeiro: Calcula o grau do polinomio
    % Segundo: Calcula o valor do polinomio para cada ponto de xp
    % Terceiro: Retorna o vetor com os valores do polinomio para cada ponto de xp
    
    n = length(c)-1    
    for k = 1 : length(xp)
        potenciacao_x = 1;
        ya(k) = c(1); 
        for i = 1 : n 
            potenciacao_x = potenciacao_x * (xp(k)-xi);
            ya(k) = ya(k) + c(i+1) * potenciacao_x;
        end
    end
end