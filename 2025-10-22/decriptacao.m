clc;
clear all;
alfabeto = "abcdefghijklmnopqrstuvwxyz";
texto_cifrado = input("Digite o texto cifrado:\n", "s");
k = input("Digite o valor da chave de encriptação:\n");
n = 1; % Quantidade de caracteres do texto codificado
texto_cifrado
texto_claro = " ";

k = (k * (-1))

for i = 1:length(texto_cifrado)
  for j = 1:length(alfabeto)
    confere = strcmp(texto_cifrado(i),alfabeto(j));
    if(confere == 1)
      % pode ser invertido com j-k, 26
      indice = mod(j+k,26);
      if(indice != 0)
        texto_claro(n) = alfabeto(indice);
      else
         texto_claro(n) = alfabeto(26);
      endif
      n = n + 1;
      break;
    elseif(texto_cifrado(i) == " ")
      texto_claro(n) = " ";
      n = n + 1;
      break;
    endif
  endfor
endfor

texto_claro
