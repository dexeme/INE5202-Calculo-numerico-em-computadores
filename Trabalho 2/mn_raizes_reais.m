

function raiz = mn_raizes_reais(f, dominio)
    
    % Localização das raízes iniciais:
    
    xi = calcula_xi(f, dominio);
    
    for indice = 1 : length(xi)
        delta_x = 1e-5;
        repeticoes = 0;
        while abs(delta_x) > 1e-10 && repeticoes < 100 % Se qualquer condicao falhar, para.
            
            repeticoes = repeticoes + 1;
            
            derivada_f = (f(xi(indice) + delta_x) - f(xi(indice)))/delta_x; % Derivada numérica baseada na definição do limite, com delta_x tendendo a zero numerico
            
            delta_x = - f(xi(indice))/derivada_f;
            
            raiz(indice) = xi(indice) + delta_x;
            
            xi(indice) = raiz(indice);
    
        end
        
        repeticoes;
    
    end