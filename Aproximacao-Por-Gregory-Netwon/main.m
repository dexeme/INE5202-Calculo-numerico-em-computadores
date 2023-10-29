%aproxime a função f(x) = cos²(x) no intervalo [0, pi/2] com erro max < 5e-2 (0,05)
a = 0 ; b = pi/2; % intervalo

% Primeiro calculamos os coeficientes
% Definindo os pontos
n = 3
h = (b-a)/n; % Intervalo dos n+1 pontos exatos para "ancorar" o polinômio
x_exato = [ a:h:b ]
y_exato = (cos(x_exato)).^2

coeficientes = coeficientes_gregory_newton(x_exato, y_exato)
wa = valor_polinomio_gregory_newton(xp, coeficientes, x_exato, y_exato); % nossa função aproximada por Gregory Newton
Erro_GN = abs(wa-ye); 
Erro_Max_GN = max(Erro_GN) %(n=3 -> Erro_Max_GN≃0.0054<0,05;  )
% erro maximo ->  no meio dos subintervalos [x(i), x(i+1)], e maior nos subintervalos das extremidades
