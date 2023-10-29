% aproxime a função f(x) = cos²(x) no intervalo [0, pi/2] com erro max < 5e-2 (0,05) pela série de Taylor
a = 0 ; b = pi/2; % intervalo

% em nosso exemplo, n = 3
% xi  = (0+pi/2)/2 = pi/4
xi = pi/4;

% calculamos manualmente todos os coeficientes c:
% coeficiente: f(xi) ,  f'(xi)/1! , f''(xi)/2! ...
c = [1/2 , -1 , 0 , +2/3 ];

ya = valor_polinomio(xp, c , xi); % nossa função aproximada
ye = (cos(xp)).^2; % função nativa para exato
erro = abs(ya-ye); 
erro_max = max(erro);