def mi_metodo(argumento='default')
  p argumento
  p argumento.class
  p argumento.upcase
end

#mi_metodo()
# * viene a ser una lista
def otro_metodo(argumento, *argumentos)
  p argumento
  p argumentos
end
#otro_metodo('texto', 20, true, 2.5)
# ** viene a ser una hash
def login(usuario:, clave: password, **argumentos)
  puts usuario
  puts clave
  puts argumentos
end
login(usuario:'Cristian', clave:'secreta', llave:'valor', otra_llave: 'valor')
