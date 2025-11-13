clc;
clear all;
alfabeto = "abcdefghijklmnopqrstuvwxyz";
k1 = 5;
k2 = 19;

chave_sequencia = [k1, k2, k2, k1, k2]; % sequencia das chaves da cifra polialfabética
periodo = length(chave_sequencia); % período da chave
indice_chave_atual = 1; % valor da primeira chave

texto_claro = input("Digite o texto claro:\n", "s");
n = 1;
texto_cifrado = " ";

for i = 1:length(texto_claro)
  for j = 1:length(alfabeto)
    confere = strcmp(texto_claro(i),alfabeto(j));
    if(confere == 1)
      k = chave_sequencia(indice_chave_atual); % Seleciona a chave atual.

      indice = mod(j + k, 26);
      if(indice != 0)
        texto_cifrado(n) = alfabeto(indice);
      else
        texto_cifrado(n) = alfabeto(26); % 'z'
      endif

      indice_chave_atual = mod(indice_chave_atual, periodo) + 1; % muda o indice da chave em ciclos

      n = n + 1;
      break;
    elseif(texto_claro(i) == " ")
      texto_cifrado(n) = " ";
      n = n + 1;
      break;
    endif
  endfor
endfor

texto_cifrado
