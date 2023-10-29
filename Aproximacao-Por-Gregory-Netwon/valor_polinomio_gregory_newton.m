function ya = valor_polinomio_gregory_newton(xp, c , x, y)

% Pn(x) = y(1)*1 + Δ¹y(1)(xp - x(1)) + Δ²y(1)(xp - x(1))(xp - x(2)) + ... + Δ^n y(1) * Π[j=1:n](x - x(j))
% Pn(x) = c(1)*1 + c(2)  (xp - x(1)) + c(3)  (xp - x(1))(xp - x(2)) + ... + c(n+1)   * Π[j=1:n](x - x(j))

   % c = coeficientes
   % potenciacao_x = xp⁰, (xp - x(1))¹, (xp - x(1))(xp - x(2)), ... , Π[j=1:n](x - x(j))
    n = length(c)-1;
    for k = 1 : length(xp)
        potenciacao_x = 1;
        ya(k) = c(1);
        for i = 1 : n 
            potenciacao_x = potenciacao_x * (xp(k)-x(i));
            ya(k) = ya(k) + c(i+1) * potenciacao_x;
        end
    end
    
end