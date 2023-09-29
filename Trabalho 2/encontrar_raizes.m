function [x, M] = encontrar_raizes(a)
    n = length(a) - 1; % Grau do polinômio
    k = 0;
    precisao = 1e-5;

    while n > 0
        k = k + 1;

        r = xi_raio(a); % Calcula o raio
        
        % xi(k) = 0.1 * r + 0.1 * r * i
        
        xi(k) = complex(precisao * r, precisao * r); # módulo de xi deve ser menor que r, abs(xi) < r
        
        % Calcular o x final e sua multiplicidade pelo Método de Newton
        [x(k), M(k)] = mn_raizes_complexas(n, a, xi(k));
        
        % vamos reduzir o grau M vezes e voltar ao valor inicial
        [n, a] = briot_ruffini(x(k), M(k), n, a);
    end
    x = transpose(x);
    M = transpose(M);
end