% 1c. Alternativamente, determine os m = 3 pontos/nós t necessários no Método de 
% Gauss-Legendre através das raízes do polinômio de Legendre de grau m = 3;

function t = gauss_legendre_nodes()
    % Função para obter os nós do Método de Gauss-Legendre para m = 3
    
    % Nós para m = 3 (raízes do polinômio de Legendre de grau 3)
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
    disp("");
    t = [-sqrt(3/5); 0; sqrt(3/5)];
    disp("Nós encontrados:");
    disp("");
    disp(t);
end

function q1C()
    disp("");
    disp("--------------------------------------------");
    disp("");
    disp("1.c)");
    disp("");
    % Chamar a função para obter os nós
    gauss_legendre_nodes();

endfunction

