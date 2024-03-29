
class Fracciones
	
	attr_reader :num, :den

	# Maximo comun divisor
	def mcd (num, den)
		den == 0 ? num : mcd(den, num%den)
	end
	
	def lcd (num, den)
		z = num / mcd(num,den) * den
	end

	def initialize (num, den)
	  
		# Verificamos que el denominador no sea cero
		raise TypeError, "Denominador no puede ser cero" if den.eql?0
		
		# Calculamos maximo comun divisor
		d = mcd(num, den)

		@num = num/d
		@den = den/d
	
	end

	# Numerador de la fraccion
	def num()
		return @num
	end

	# Denominador de la fraccion
	def denom()
		return @den
	end

	# Muestra la fraccion en forma num/den
	def to_s
		return "#@num/#@den"
	end
	
	# Retorna la fraccion en formato flotante
	def flotante()
		flotante = @num/@den.to_f
		return flotante
	end

	def == (other)
	  
		respuesta = true
	
		if (@num==other.num and @den==other.denom) then
			respuesta = false
		end
		
		return respuesta
		  
	end
	
end
