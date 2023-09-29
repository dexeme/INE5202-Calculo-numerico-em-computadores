function [n, a] = briot_ruffini(x, M, n, a)
# Divisão sintética por Briot Ruffini -> para baixar o grau M vezes
    disp("Polinômio inicial: ");
    formatar_polinomio(a, n)
    for k = 1:M
        b(1) = a(1);
        for i = 2:n+1
            b(i) = a(i) + x * b(i-1);
                end
        n = n-1;
        a = b(1:n+1);
        # printa que o polinômio foi reduzido
        disp("Polinômio reduzido em 1 grau");
        disp("Polinômio reduzido: ");
        disp(a);
        disp("Resto: ");
    end
    # Printa o polinômio reduzido e o resto
    disp("Polinômio reduzido: ");
    disp(a);
    disp("Resto: ");
    disp(b(n+2));
end

function polinomio_formatado = formatar_polinomio(polinomio, grau)
    # inicia uma string vazia
    polinomio_formatado = "";
        for k = 1:grau+1
            % a = [ 1, 3, -4, 5 ] -> 1x^3 + 3x^2 - 4x + 5
            polinomio_formatado = strcat(polinomio_formatado, num2str(polinomio(k)), "x^", num2str(grau+1-k), " ");
        end
    disp(polinomio_formatado);
end

