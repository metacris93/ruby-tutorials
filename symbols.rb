# Un symbol es el objeto mas basico que puedes crear en ruby, es un nombre y una ID interna
# Los simbolos se refieren al mismo objeto en todo el programa. Por lo tanto son mas efeicientes que los strings. Dos strings con el mismo nombre son dos objetos distintos, esto implica ahorrar tiempo y memoria

nombre = "Cristian"
nombre_2 = "Cristian"

p nombre.object_id
p nombre_2.object_id

# simbolo :rojo
color = :rojo

color_2 = :rojo

p color.object_id
p color_2.object_id
#los object id son iguales

