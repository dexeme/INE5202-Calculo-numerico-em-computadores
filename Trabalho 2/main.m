


% --------------------- Primeira questão ---------------------------

% ---------------------------- P1 ----------------------------------

% Pelo método de Newton por raízes reais

' Polinômio 1.a) '
' sin(x)^3 * cos(x)^3 + 0.1 = 0, subdomínio=[-6, 6] '

p1 = @(x) (sin(x).^3 .* cos(x).^3 + 0.1)

subdominio_p1 = [-6, 6]

x_p1 = metodo_newton(p1, subdominio_p1)

residuo_p1 = abs(p1(x_p1))

% ---------------------------- P2 ----------------------------------

% Pelo método de Newton para raízes com multiplicidade maior que 1

' Polinômio 1.b) '
' x^4 - 2*i x^3 - 1.5 x^2 + (0.5*i) x + 0.0625 = 0 '

p2 = [1; -2*i; -1.5; 0.5*i; 0.0625]

[x_p2, M_p2] = encontrar_raizes(p2)

residuo_p2 = calcula_valor_polinomio(p2, x_p2)

% ---------------------------- P3 ----------------------------------

% Pelo método de Newton para raízes com multiplicidade maior que 1

' Polinômio 1.c) '
' x^8 - 11.3 x^7 + 50.83 x^6 - 114.581 x^5 + 132.9985 x^4 - 72.57875 x^3 + 14.865625 x^2 - 1.2734375 x + 0.0390625 = 0 '

p3 = [1; -11.3; 50.83; -114.581; 132.9985; -72.57875; 14.865625; -1.2734375; 0.0390625]

[x_p3, M_p3] = encontrar_raizes(p3)

residuo_p3 = calcula_valor_polinomio(p3, x_p3)

% ---------------------------- P4 ----------------------------------

% Pelo método de Newton para raízes com multiplicidade maior que 1

' Polinômio 1.d) '
' x^8 - 1.3 x^7 + 0.83 x^6 - 0.681 x^5 + 0.2285 x^4 - 0.09675 x^3 + 0.021125 x^2 - 0.0019375 x + 0.0000625 = 0 '

p4 = [1; -1.3; 0.83; -0.681; 0.2285; -0.09675; 0.021125; -0.0019375; 0.0000625]

[x_p4, M_p4] = encontrar_raizes(p4)

residuo_p4 = calcula_valor_polinomio(p4, x_p4)


% 2). Determine DUAS soluções do sistema de 3 equações não lineares abaixo (tem mais de uma solução), com máxima precisão possível. 
% Teste diferentes valores iniciais, incluindo xi complexos.

% f1(x(1),x(2),x(3))=sin(x(1))*cos(x(2))+x(3)-1.5=0 
% f2(x(1),x(2),x(3))= x(1)^2+x(2)^2+x(3)^2-3.0=0
% f3(x(1),x(2),x(3))= x(1)+x(2)+x(3)-3.1=0

%  Determine o resíduo máximo no final.


