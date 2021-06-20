saludo = Proc.new {|nombre| p "Hola #{nombre}"}
p saludo.class
p saludo.call("simon")

class Transaction
	def exec
		p "Ejecutando transaccion"
		if block_given?#nos esta pasando un lambda
			yield
		end
	end
end

tx = Transaction.new
p tx.exec
p tx.exec {puts "Despues de la transaccion"}