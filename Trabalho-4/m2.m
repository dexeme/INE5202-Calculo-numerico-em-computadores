source("f_gauss_legendre.m");

% 2. Calcule a integral de f(x)=x*ln(x)/(1+cos(x)) entre 0.1 e 1.0, com precisão de 4 dígitos significativos
%  (pode-se estimar o erro), pelo método mais eficiente (testar Simpson, Gauss-Legendre,...).

function q2()
    disp("");
    disp("--------------------------------------------");
    disp("");
    disp("2)");
    disp("");
    # Infos genéricas
    
    f = @(x) x .* log(x) ./ (1 + cos(x));
    
    a = 0.1;
    b = 1.0;
    
    inteiro = integral(f, 0.1, 1.0)    

    # Trapézios
    n_trapezios = 40;
    Tn = f_trapezios(n_trapezios, a, b, f);
    
    n_trapezios_2 = 128; # Menor potência de dois maior que 2 * n_trapézios
    Tn2 = f_trapezios(n_trapezios_2, a, b, f);
    
    erro_trapezios_estimado = abs(Tn2 - Tn);
    printf("Trapézios:\n\tErro (estimado) para %d intervalos: %.20d\n", n_trapezios, erro_trapezios_estimado);
    printf("\tErro em relação ao valor dado pelo Octave: %.20d\n", abs(Tn - inteiro));
    
    # Simpson
    n_simpson = 8;
    Sn = f_simpson(n_simpson, a, b, f);
    
    n_simpson_2 = n_simpson * 2;
    Sn2 = f_simpson(n_simpson_2, a, b, f);
    
    erro_simpson_estimado = abs(Sn2 - Sn);
    printf("Simpson:\n\tErro (estimado) para %d intervalos: %.20d\n", n_simpson, erro_simpson_estimado);
    printf("\tErro em relação ao valor dado pelo Octave: %.20d\n", abs(Sn - inteiro));

    # Gauss-Legendre
    n_gaussleg = 4;
    Gm = f_legendre(n_gaussleg, a, b, f);

    n_gaussleg_2 = n_gaussleg * 2;
    Gm2 = f_legendre(n_gaussleg_2, a, b, f);

    erro_gaussleg_estimado = abs(Gm2 - Gm);
    printf("Gauss-Legendre:\n\tErro (estimado) para %d pontos: %.20d\n", n_gaussleg, erro_gaussleg_estimado);
    printf("\tErro em relação ao valor dado pelo Octave: %.20d\n", abs(Gm - inteiro));
endfunction