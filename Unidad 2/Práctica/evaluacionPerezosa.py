def sum(*args):
    resultado = 0
    for num in args:
        resultado = resultado + num
    return resultado


total = sum(1, 2, 3, 4, 5)  # Aún no se ha calculado la suma
# En "total" solo esta la expresión de la operación

print(total())  # Ejecutamos la operación cuando lo necesitamos
# En otras palabras: al imprimir

# Devuelve: 15
