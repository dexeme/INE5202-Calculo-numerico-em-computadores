function [n, a] = briot_ruffini(x, M, n, a)
# Divisão sintética por Briot Ruffini -> para baixar o grau M vezes
    for k = 1:M #M divisões 
        b(1) = a(1);
        for i = 2:n+1
            b(i) = a(i) + x * b(i-1);
        end
        
        # reduzimos o grau, fazendo uma divisão de Briot Ruffini por vez
        n = n-1;
        a = b(1:n+1);
    end
end