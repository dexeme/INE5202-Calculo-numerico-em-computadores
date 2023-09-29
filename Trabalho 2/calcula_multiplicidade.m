function M = calcula_multiplicidade(R)
    #Avalia a Multiplicidade estimada pelo numero de Restos tendendo a ZERO (menor que um limite (0.1))
    M = 1;
    soma_restos = sum(abs(R(1:2)));
    while soma_restos < 0.1
        M = M + 1;
        soma_restos = soma_restos + abs(R(M+1));
    end
end