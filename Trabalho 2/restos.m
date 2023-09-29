function R = restos(n, a, xi)
    n_inicial = n;

    # Divisão sintética por Briot Ruffini
    for k = 1:n_inicial  #repetir divisões por vezes para calcular todos os (n+1) restos 
        b(1) = a(1);
        for i = 2:n+1
            b(i) = a(i) + xi * b(i-1);
        end
        R(k) = b(n+1);
        
        # reduzimos o grau n, fazendo divisão por Briot Ruffini
        n = n-1;
        a = b(1:n+1);
    end
    
    # terminada as n (valor original) divisões, temos um polinômio de grau 0
    # P0(x) = a(1)
    # precisamos dividir P0 por x-xi e obter um último resto (R(n+1))
    # P0(x) = a(1) dividido por x-xi resulta quociente 0 e resto a(1)
    R(n_inicial+1) = a(1);
end