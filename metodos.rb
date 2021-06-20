# la ultima linea del metodo es lo que tiene que retornar
# los simbolos se interpretan como metodos, el simbolo '+' recibe un parametro que es lo que retorna 'to_s'
def mi_metodo
  mensaje = 'el resultado es: '
  resultado = 2 + 2
  mensaje + resultado.to_s
end

puts mi_metodo
