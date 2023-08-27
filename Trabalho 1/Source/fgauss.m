function X = fgauss(A, B)
n1 = 15; n2 = 25; n3 = 50;
A = [A B];
n = size(A, 1)
m = size(B, 2)

for k = 1: n - 1
    % Buscar a melhor linha k, pro troca de linhas - Pivotação Parcial:
    % Procurar na coluna j=k, qual é o maior valor em módulo abaixo da diagonal principal
    % A(k:n, k)
    k;
            [maior_modulo, local_do_maior] = max(abs(A(k:n, k)));%A(k:n, k) contem o vetor de coeficientes abaixo da diagonal principal da coluna k
    local_do_maior = local_do_maior + k - 1; %Acresenta as k-1 linhas acima da diagonal principal da coluna k
    A_original = A;
    A(k, : ) = A(local_do_maior, : );          %Linha k recebe a linha que contem o maior modulo
    A(local_do_maior, : ) = A_original(k, : ); %Linha do maior modulo recebe a linha k original, antes de ser substituida
    A;
    for i = k+1:n
    
        aux = A(i,k) / A(k, k);
        A(i,k) = 0;
        for j = k + 1: n + 1
            A(i, j) = A(i, j) - aux * A(k, j);
        end
    end
end
%Analise de tipos de sistemas: Determinado, Indeerminado e Impossivel
    if A(n, n) != 0 % Se A(n, n) for resíduo pequeno: abs(A(n,n)) > 1e-14
        X(n, 1) = A(n, n + 1)/A(n, n);
    else
        if A(n, n+1) == 0 % Se A(n, n + 1) for resíduo pequeno: abs(A(n,n + 1)) < 1e-14
            disp('Sistema Indeterminado');
            X(n, 1) = 12;
        else
            disp('Sistema Impossivel');
            X(n) = NaN;
            exit;
        end
    end
    %Retrosubstituição   
    for i = n - 1:-1:1
        somatorio = 0;
        for j = i + 1:n
            somatorio = somatorio + A(i, j) * X(j,1);
        end
        %somatorio = sum(A(i, i + 1:n) * X(i + 1:n,1)) %alternativa
        X(i, 1) = (A(i, n + 1) - somatorio) / A(i, i);
    end
end