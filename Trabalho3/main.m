% calculo do intervalo [a : h : b]
a = 0; b = pi/2 ;
xi = pi/4; % fixo
c = [1/2, -1, 0, 2/3]; % Coeficientes -> c(j) = (f' * aux) / j!

numero_de_intervalos = 100;
h = (b-a)/numero_de_intervalos;
x = [a : h : b];

Y_aproximado = calcula_valor_polinomio(x, c, xi);
Y_exato = cos(x).^2;
erro = max(abs(Y_aproximado - Y_exato))