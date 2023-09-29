function xi = calcula_xi(f, dominio)

    numero_de_intervalos = 1000; %(deve ser uma valor grane p gerar uma busca com h pequeno o suficiente)
    
    %   Final do domínio - início do domínio / 1000
    h = (dominio(2) - dominio(1))/numero_de_intervalos;
    x = dominio(1):h:dominio(2);
    y = f(x);
    
    indice_raiz = 0;
    limite = 0.1/h;
    
    for i = 1:length(x) - 1
        if (y(i) * y(i + 1)) <= 0 && abs(y(i) - y(i+1)) < limite
            i;
            indice_raiz=indice_raiz+1;
            y(i);
            y(i+1);
            xi(indice_raiz) = (x(i) + x(i + 1)) * 0.5;
        end    
    end
end