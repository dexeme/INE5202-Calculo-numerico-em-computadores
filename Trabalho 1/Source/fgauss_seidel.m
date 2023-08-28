function X = fgauss_seidel(A, B)

X = [0; 0; 0]
valor_inicial = 1
diferenca = 1;
repeticoes = 0;
lambda = 1; % Fator de relaxação
    while diferenca > 1e-10 && repeticoes < 100
        repeticoes = repeticoes + 1
        X_anterior = X;
        % X(i) = (1 - lamda) * X_anterior(i) + lambda * X(i)
        X(1) = (1 - lambda) * X_anterior(1) + lambda * (B(1, 1) - (A(1, 2) * X(2) + A(1, 3) * X(3))) / A(1, 1);
        X(2) = (1 - lambda) * X_anterior(2) + lambda * (B(2, 1) - (A(2, 1) * X(1) + A(2, 3) * X(3))) / A(2, 2);
        X(3) = (1 - lambda) * X_anterior(3) + lambda * (B(3, 1) - (A(3, 1) * X(1) + A(3, 2) * X(2))) / A(3, 3);
        X
        diferenca = max(abs(X - X_anterior))
    end
    
endfunction