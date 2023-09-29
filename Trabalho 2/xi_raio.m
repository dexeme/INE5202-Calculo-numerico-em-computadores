function raio = xi_raio(a)
    n = length(a) - 1;

    raio = 1 + max(abs(a(2:n+1))) / abs(a(1));