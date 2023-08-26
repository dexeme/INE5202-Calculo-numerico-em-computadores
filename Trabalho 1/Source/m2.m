% ---------------------- 2 ---------------------------

% 2.1). Dado o sistema de equações lineares abaixo para n3 equações:

% n1 = 15; n2 = 25; n3 = 50;

% i = 1                #       3x(i)    +  2x(i+5)                     =  2 
% for i = 2 : n1-1     #       x(i-1)   +  3x(i)  +  m2x(i+5)          = -2 
% for i = n1 : n2-1    #       2x(i-4)  +  4x(i)  +  x(i+1)            =  3 
% i = n2               #       x(i-1)   +  6x(i)  -  x(i+4)            = -2 
% for i = n2+1 : n3-1  #       x(i-3)   +  x(i-1) +  7*x(i)+2x(i+1)    =  5 
% i = n3               #       2x(i-10) +  5x(i)                       = -5 

format long

n1 = 15; n2 = 25; n3 = 50;

A = zeros(n3, n3);
B = zeros(n3, 1);

i = 1; A(i, i) = 3; A(i, i+5) = 2; B(i) = 2;
    for i = 2 : n1-1; A(i, i-1) = 1; A(i, i) = 3; A(i, i+5) = 2; B(i, 1) = -2; end;
        for i = n1 : n2-1; A(i, i-4) = 2; A(i, i) = 4; A(i, i+1) = 1; B(i, 1) = 3; end;
            i = n2; A(i, i-1) = 1; A(i, i) = 6; A(i, i+4) = -1; B(i, 1) = -2;
            for i = n2+1 : n3-1; A(i, i-3) = 1; A(i, i-1) = 1; A(i, i) = 7; A(i, i+1) = 2; B(i, 1) = 5; end;
                i = n3; A(i, i-10) = 2; A(i, i) = 5; B(i, 1) = -5;




x = fgauss(A, B);

            




