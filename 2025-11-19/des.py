# pip install pycryptodome
from Crypto.Cipher import DES
from Crypto.Util.Padding import pad, unpad

# Chave e variável
chave = b'CAIX1980'  # 8 bytes ou 64 bits
texto = "DIOGENES->BRUNO:5000"

# Criptografar
cipher = DES.new(chave, DES.MODE_ECB)
padded = pad(texto.encode(), 8)
cifrado = cipher.encrypt(padded)

print(f"Original: {texto}")
print(f"Cifrado:  {cifrado.hex().upper()}")

# Descriptografar
decifrado = cipher.decrypt(cifrado)
resultado = unpad(decifrado, 8).decode()
print(f"Decifrado: {resultado}")

# Teste ECB - mesma entrada = mesma saída
cifrado2 = cipher.encrypt(padded)
print(f"\nTeste:")
print(f"Cifra 1: {cifrado.hex().upper()}")
print(f"Cifra 2: {cifrado2.hex().upper()}")