source("coeficientes-gauss-legendre.m");

%  1a. (Opcional) Monte as 3 equações que determinam os m = 3 coeficientes 
%  pesos C e os m = 3 pontos/nós t necessários no Método de Gauss-Legendre;

function q1A()

    [C, t] = get_C_t()

    disp("--------------------------------------------");
    disp("1.a)");
    disp("");
    disp("Monte as 3 equações que determinam os m = 3 coeficientes");
    disp("pesos C e os m = 3 pontos/nós t necessários no Método de Gauss-Legendre;");
    disp("");
        
    disp("A fórmula de integração de Gauss-Legendre");
    disp("é dada por:");
    disp("");
    disp("I = C1*f(t1) + C2*f(t2) + C3*f(t3)");
    disp("");
    disp("   Equações:");
    disp("");
    printf("\t2   = C(m, 1) + C(m, 2) + C(m, 3) + C(m, 4)\n");
    printf("\t0   = C(m, 1)*t(m, 1) + C(m, 2)*t(m, 2) + C(m, 3)*t(m, 3) + C(m, 4)*t(m, 4)\n");
    printf("\t2/3 = C(m, 1)*t(m, 1)² + C(m, 2)*t(m, 2)² + C(m, 3)*t(m, 3)² + C(m, 4)*t(m, 4)²\n");
    printf("\t0   = C(m, 1)*t(m, 1)³ + C(m, 2)*t(m, 2)³ + C(m, 3)*t(m, 3)³ + C(m, 4)*t(m, 4)³\n");
    printf("\t2/5 = C(m, 1)*t(m, 1)⁴ + C(m, 2)*t(m, 2)⁴ + C(m, 3)*t(m, 3)⁴ + C(m, 4)*t(m, 4)⁴\n");
    printf("\t0   = C(m, 1)*t(m, 1)⁵ + C(m, 2)*t(m, 2)⁵ + C(m, 3)*t(m, 3)⁵ + C(m, 4)*t(m, 4)⁵\n");
    printf("\t2/7 = C(m, 1)*t(m, 1)⁶ + C(m, 2)*t(m, 2)⁶ + C(m, 3)*t(m, 3)⁶ + C(m, 4)*t(m, 4)⁶\n");
    printf("\t0   = C(m, 1)*t(m, 1)⁷ + C(m, 2)*t(m, 2)⁷ + C(m, 3)*t(m, 3)⁷ + C(m, 4)*t(m, 4)⁷\n")
    disp("");
    disp("   Pontos t:");
    disp("");
    printf("\tt(4, 1): %.20f\n", t(4, 1));
    printf("\tt(4, 2): %.20f\n", t(4, 2));
    printf("\tt(4, 3): %.20f\n", t(4, 3));
    printf("\tt(4, 4): %.20f\n", t(4, 4));
    disp("");
    disp("   Pesos C:");
    disp("");
    printf("\tC(4, 1): %.20f\n", C(4, 1));
    printf("\tC(4, 2): %.20f\n", C(4, 2));
    printf("\tC(4, 3): %.20f\n", C(4, 3));
    printf("\tC(4, 4): %.20f\n", C(4, 4));

end
