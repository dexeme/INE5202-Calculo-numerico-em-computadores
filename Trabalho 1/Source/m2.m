% Aluno: Tiago Faustino de Siqueira
% Matrícula: 22102193

% 2.1). Dado o sistema de equações lineares abaixo para n3 equações:

% n1 = 15; n2 = 25; n3 = 50;

% i = 1                #       3x(i)    +  2x(i+5)                     =  2 
% for i = 2 : n1-1     #       x(i-1)   +  3x(i)  +  2x(i+5)           = -2 
% for i = n1 : n2-1    #       2x(i-4)  +  4x(i)  +  x(i+1)            =  3 
% i = n2               #       x(i-1)   +  6x(i)  -  x(i+4)            = -2 
% for i = n2+1 : n3-1  #       x(i-3)   +  x(i-1) +  7*x(i)+2x(i+1)    =  5 
% i = n3               #       2x(i-10) +  5x(i)                       = -5 

n1 = 15; n2 = 25; n3 = 50;

% 1a). Armazene o sistema acima em forma de matriz completa (não imprima);

A = zeros(n3, n3);
B = zeros(n3, 1);

i = 1; A(i, i) = 3; A(i, i+5) = 2; B(i) = 2;

for i = 2 : n1-1; 
    A(i, i-1) = 1; A(i, i) = 3; A(i, i+5) = 2; B(i, 1) = -2; 
end;

for i = n1 : n2-1; 
    A(i, i-4) = 2; A(i, i) = 4; A(i, i+1) = 1; B(i, 1) = 3; 
end;

i = n2; A(i, i-1) = 1; A(i, i) = 6; A(i, i+4) = -1; B(i, 1) = -2;

for i = n2+1 : n3-1; 
    A(i, i-3) = 1; A(i, i-1) = 1; A(i, i) = 7; A(i, i+1) = 2; B(i, 1) = 5; 
end;

i = n3; A(i, i-10) = 2; A(i, i) = 5; B(i, 1) = -5;

% 1b). Resolva o sistema acima por um método direto construído em aula. Imprima a solução e o resíduo máximo das equações;

[X, operacoes, residuo] = fgauss(A, B);

printf("Solução do sistema:\n\nX=\n");
disp(X);
printf("Resíduo máximo das equações: %d\n", residuo);

% 1c). Imprima o número total de operações com números reais (em PONTO FLUTUANTE) utilizadas;

printf("Número de operações: %d\n", operacoes);

            




