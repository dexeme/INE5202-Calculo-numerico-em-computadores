%  1a. (Opcional) Monte as 3 equações que determinam os m = 3 coeficientes 
%  pesos C e os m = 3 pontos/nós t necessários no Método de Gauss-Legendre;

function q1A()
    disp("--------------------------------------------");
    disp("1.a)");
    disp("");
    disp("Monte as 3 equações que determinam os m = 3 coeficientes");
    disp("pesos C e os m = 3 pontos/nós t necessários no Método de Gauss-Legendre;");
    disp("");
        
    % Primeiro vamos montar as equações que determinam os coeficientes C
    disp("   Coeficientes C:");
    disp("");
    disp("Primeiro vamos montar as equações que determinam os coeficientes C.");
    disp("Para isso vamos usar a fórmula de integração de Gauss-Legendre");
    disp("que é dada por:");
    disp("");
    disp("I = C1*f(t1) + C2*f(t2) + C3*f(t3)");
    disp("");
    disp("onde:");
    disp("");
    disp("     f(t) é a função que queremos integrar");
    disp("     t1, t2 e t3 são os pontos/nós de integração");
    disp("     C1, C2 e C3 são os coeficientes que queremos determinar");
    disp("");
    disp("");
    disp("Para determinar os coeficientes C vamos usar a fórmula:");
    disp("");
    disp("     C1 = 5/9");
    disp("     C2 = 8/9");
    disp("     C3 = 5/9");
    disp("");
    disp("onde:");
    disp("");
    disp("     5/9, 8/9 e 5/9 são os pesos de integração");
    disp("     que são dados na tabela do método de Gauss-Legendre");
    disp("");
    disp("");
    disp("Para determinar os pontos/nós de integração vamos usar a fórmula:");
    disp("");
    disp("     t1 = -sqrt(3/5)");
    disp("     t2 = 0");
    disp("     t3 = sqrt(3/5)");
    disp("");
    disp("");
    disp("Agora vamos montar as equações que determinam os pontos/nós t");
    disp("");
    disp("   Pontos t:");
    disp("");
    disp("(1) Primeira equação:");
    disp("");
    disp("     L1(t) = t -> t1 = 0");
    disp("");
    disp("(2) Segunda equação:");
    disp("");
    disp("     L2(t) = 1/2*(3*t² - 1) -> t2 = -sqrt(3/5)");
    disp("");
    disp("(3) Terceira equação:");
    disp("");
    disp("     L3(t) = 1/2*(5*t³ - 3*t) -> t3 = sqrt(3/5)");
end
