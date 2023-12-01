% 1b. Determine os m = 3 coeficientes c e m = 3 pontos/nós t necessários no Método de Gauss-Legendre através das 2*3 equações 
% não lineares obtidas no item (1a).
% Use o código do Método de Newton genérico para n equações não lineares.
% Sugestões:
%               1. xi = C's devem estar entre 0 e 1, pois a soma é 2; 
%               2. t's devem estar entre -1 e +1. Usar sub-relaxação.

function X = fNewtonSisNum(n, Xi)
    tol = 1e-14;
    criterio = 1;
    contador = 0;
    Dx = ones(n, 1) * 1e-6;
    
    while (criterio > tol && contador < 50)
        contador = contador + 1;
        
        % Gerando a jacobiana
        Yi = G(Xi); % Valor inicial
        Xj = Xi;
        
        for j = 1:n % Varre as colunas
            Xj(j) = Xi(j) + Dx(j); % Incremento na coluna j
            A(:, j) = (G(Xj) - Yi) / Dx(j);
            Xj = Xi; % Volta ao valor original
        end
        
        B(:, 1) = -Yi;
        Dx = A \ B;
        X = Xi + Dx;
        Xi = X;
        criterio = min(abs(Dx));
    end
    
    contador
    criterio
end

    
function Y = G(X)
    Y(1)=  X(1)*X(1) + X(2)*X(2) + X(3)*X(3) - 1;
    Y(2)=2*X(1)*X(1) + X(2)*X(2)-4*X(3);
    Y(3)=3*X(1)*X(1)-4*X(2)      + X(3)*X(3);
end



function q1B()
    disp("");
    disp("--------------------------------------------");
    disp("");
    disp("1.b)");
    disp("");
    % Resolvendo o sistema não linear
    X = fNewtonSisNum(3, [0.5; 0.5; 0.5]);
    disp("Solução do sistema não linear:");
    disp("");
    disp(X);
    disp("");
    % Calculando o valor da função no ponto encontrado
    disp("Resíduo máximo obtido:");
    disp(max(abs(G(X))));
    disp("");
    disp("--------------------------------------------");
    disp("");
end
