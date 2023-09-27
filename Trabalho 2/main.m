
% 1). Determine todas as raízes das equações, os respectivos resíduos e escreva a forma fatorada (arredonde as raízes no final):
% 1.a). sin(x)^3 * cos(x)^3+0.1=0, subdomínio=[-6, +6]
% 1.b). x^4 - 2*i x^3 - 1.5 x^2 + (0.5*i) x + 0.0625 = 0
% 1.c). x^8 - 11.3 x^7 + 50.83 x^6 - 114.581 x^5 + 132.9985 x^4 - 72.57875 x^3 + 14.865625 x^2 - 1.2734375 x + 0.0390625 = 0
% 1.d). x^8 - 1.3 x^7 + 0.83 x^6 - 0.681 x^5 + 0.2285 x^4 - 0.09675 x^3 + 0.021125 x^2 - 0.0019375 x + 0.0000625 = 0

% 2). Determine DUAS soluções do sistema de 3 equações não lineares abaixo (tem mais de uma solução), com máxima precisão possível. 
% Teste diferentes valores iniciais, incluindo xi complexos.

% f1(x(1),x(2),x(3))=sin(x(1))*cos(x(2))+x(3)-1.5=0 
% f2(x(1),x(2),x(3))= x(1)^2+x(2)^2+x(3)^2-3.0=0
% f3(x(1),x(2),x(3))= x(1)+x(2)+x(3)-3.1=0

%  Determine o resíduo máximo no final.

' Polinômio 1.a) '
' sin(x)^3 * cos(x)^3 + 0.1 = 0, subdomínio=[-6, 6] '

' Polinômio 1.b) '
' x^4 - 2*i x^3 - 1.5 x^2 + (0.5*i) x + 0.0625 = 0 '

' Polinômio 1.c) '
' x^8 - 11.3 x^7 + 50.83 x^6 - 114.581 x^5 + 132.9985 x^4 - 72.57875 x^3 + 14.865625 x^2 - 1.2734375 x + 0.0390625 = 0 '

' Polinômio 1.d) '
' x^8 - 1.3 x^7 + 0.83 x^6 - 0.681 x^5 + 0.2285 x^4 - 0.09675 x^3 + 0.021125 x^2 - 0.0019375 x + 0.0000625 = 0 '

% f = @(x) (x .* tan(x) - 1)
% subdominio = [-7 7]

p1 = @(x) (sin(x).^3 .* cos(x).^3 + 0.1)
subdominio_p1 = [-6, 6]
p2 = @(x) (x.^4 - 2*j .* x.^3 - 1.5 .* x.^2 + (0.5 * j) .* x + 0.0625)
subdominio_p2 = [1e-4 10]
p3 = @(x) (x.^8 - 11.3 .* x.^7 + 50.83 .* x.^6 - 114.581 .* x.^5 + 132.9985 .* x.^4 - 72.57875 .* x.^3 + 14.865625 .* x.^2 - 1.2734375 .* x + 0.0390625)
subdominio_p3 = [1e-4 10]
p4 = @(x) (x.^8 - 1.3 .* x.^7 + 0.83 .* x.^6 - 0.681 .* x.^5 + 0.2285 .* x.^4 - 0.09675 .* x.^3 + 0.021125 .* x.^2 - 0.0019375 .* x + 0.0000625)
subdominio_p4 = [1e-4 10]

x1 = metodo_newton(p1, subdominio_p1)
%x2 = metodo_newton(p2, subdominio_p2)
x3 = metodo_newton(p3, subdominio_p3)
x4 = metodo_newton(p4, subdominio_p4)


residuo1 = p1(x1)
%residuo2 = p2(x2)
residuo3 = p3(x3)
residuo4 = p4(x4)



