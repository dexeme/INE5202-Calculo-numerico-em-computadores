% Aluno: Tiago Faustino de Siqueira
% Matrícula: 22102193

% 1a). -20.125
% 1b). -60.06

% Extraindo o sinal (s), expoente (e) e mantissa (f)

function x = m1(a_double,b_double)
    a_single = single(a_double); % Float Single
    b_single = single(b_double); % Float Single

    % Passando de decimal para binário

    a_double_bin = dec2bin(typecast(a_double, 'uint64')); % Float Double
    a_single_bin = dec2bin(typecast(a_single, 'uint32')); % Float Single

    b_double_bin = dec2bin(typecast(b_double, 'uint64')); % Float Double
    b_single_bin = dec2bin(typecast(b_single, 'uint32')); % Float Single

    % Imprimindo os componentes (s, e, f) de cada binário

    [s_a_single, e_a_single, f_a_single] = extrairComponentes(a_single_bin, "single");
    [s_a_double, e_a_double, f_a_double] = extrairComponentes(a_double_bin, "double");

    % Imprima-os com 20 dígitos decimais significativos, em  float e double.

    printf("Float Single com 20 digitos significativos: %.20f\n", a_single)
    printf("Float Double com 20 digitos significativos: %.20f\n", a_double)
    printf("Float Single com 20 digitos significativos: %.20f\n", b_single)
    printf("Float Double com 20 digitos significativos: %.20f\n", b_double)

    % Imprima o erro estimado de arredondamento percentual gerado:

    printf("\nErro estimado de arredondamento percentual gerado em a) -20.125: %.20f %%\n", abs(((double(single(a_double)) - a_double) / a_double)*100))
    printf("\nErro estimado de arredondamento percentual gerado em b) -60.06: %.20f %%\n", abs(((double(single(b_double)) - b_double) / b_double)*100))

endfunction

function [sinal, expoente, mantissa] = extrairComponentes(binario, tipo)
    if tipo == "single"
        sinal = binario(1); % Pega o primeiro bit
        expoente = binario(2:9); % Pega os 8 bits seguintes
        mantissa = binario(10:32); % Pega os 23 bits seguintes
    else
        sinal = binario(1); % Pega o primeiro bit
        expoente = binario(2:12);  % Pega os 11 bits seguintes
        mantissa = binario(13:64); % Pega os 52 bits seguintes
    end
    printf("\nDados referentes ao binario de precisao %s\n\n", tipo)
    printf("Sinal: %s\n", sinal)
    printf("Expoente: %s\n", expoente)
    printf("Mantissa: %s\n", mantissa)
    printf("\n")
endfunction