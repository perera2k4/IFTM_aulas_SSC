clc;
clear all;
alfabeto = "abcdefghijklmnopqrstuvwxyz";
texto_claro = input("Digite o texto claro:\n", "s");
k = input("Digite o valor da chave de encriptação:\n");
n = 1; % Quantidade de caracteres do texto codificado
texto_claro
texto_cifrado = " ";

for i = 1:length(texto_claro)
  for j = 1:length(alfabeto)
    confere = strcmp(texto_claro(i),alfabeto(j));
    if(confere == 1)
      indice = mod(j+k,26);
      if(indice != 0)
        texto_cifrado(n) = alfabeto(indice);
      else
         texto_cifrado(n) = alfabeto(26);
      endif
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
