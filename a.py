
def funcion_aaa(valor_lista):
    #valor_lista = []

    condicion = 'a'

    while condicion != 'zzz':
        nombre = input("Ingrese su nombre, zzz para salir: ")
        if nombre == 'zzz':
            condicion = 'zzz'
        else:
            apellido = input("Ingrese su apellido: ")
            total = [nombre, apellido]
            valor_lista.append(total)

    return valor_lista






x = []
a = funcion_aaa(x)
print(a)




def apellidos(valor_lista):

    lista_apellidos = []

    for total in valor_lista:
        pregunta = input("Ingrese una vocal")
        if total[1][0] == pregunta:
            lista_apellidos.append(total)

    return lista_apellidos