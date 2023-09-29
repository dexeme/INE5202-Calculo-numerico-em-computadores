function [x, M] = encontrar_raizes(a)
    n = length(a) - 1; % Grau do polinômio
    
    % vamos calcular raízes k de 1 até o final
    k = 0;

    while n > 0 % ou seja, enquanto houver raízes (pois podem ter várias raízes iguais (multiplicidade))
        k = k + 1 % Contador de raízes
        
        % vamos calcular o x inicial
        % raio é o módulo máximo de todas as raízes
        r = 1 + max(abs(a(2:n+1))) / abs(a(1))
        
        % xi(k) = 0.1 * r + 0.1 * r * i
        
        % 0.1 foi escolha arbitrário (modulo de xi tem que ser menor que r)
        xi(k) = complex(0.1 * r, 0.1 * r) # módulo de xi deve ser menor que r, abs(xi) < r
        % xi(k) = 1.1
        % calcular o x final e sua multiplicidade pelo Método de Newton
        [x(k), M(k)] = mn_raizes_complexas(n, a, xi(k));
        
        % vamos reduzir o grau M vezes e voltar ao valor inicial
        [n, a] = briot_ruffini(x(k), M(k), n, a);
    end
    x = transpose(x);
    M = transpose(M);
end