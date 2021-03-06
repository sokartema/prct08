

class Matriz

	attr_reader :fil, :col, :matrix

	def initialize(array)
		
		@matrix = array
		@fil = array.size
		@col = array.size
		
	
	end
	
	
	
	
	def +(other) #Sobrecarga del operador + para sumar dos matrices
		
		copia = @matrix
		for i in (0...@fil)
			for j in (0...@col)
				copia[i][j] = copia[i][j] + other.matrix[i][j]
			end
		end
	
	Matriz.new(copia)
	
	end
				

	def -(other) #Sobrecarga del operador - para restar dos matrices
		
		copia = @matrix
		for i in (0...@fil)
			for j in (0...@col)
				copia[i][j] = copia[i][j] - other.matrix[i][j]
			end
		end
	
	Matriz.new(copia)
	
	end

	
	
	def *(other) # Sobrecarga del operador * para que multiplique dos matrices.

	copia = Array.new(@fil) {Array.new(other.col)}

	for i in (0...@fil)

		for j in (0...other.col)
		
			copia[i][j] = 0

			for z in (0...@col)
	
				copia[i][j] = copia[i][j] + (matrix[i][z] * other.matrix[z][j])

 			end
	
		end
	
	end
			
			
	Matriz.new(copia)
		


	end
	
	

	def ==(other) #Sobrecarga del operador == para poder comprobar si dos matrices son iguales

	comprobacion = true


	if(@fil == other.fil && @col == other.col)
		
		for i in (0...@fil)

			for j in (0...@col)


				if matrix[i][j] != other.matrix[i][j]

				comprobacion = false
				
				end		
			end
		end

		
	else
	
		comprobacion = false
		
	end

	comprobacion
	
	end
	
	
	
	def traspuesta #Metodo para hallar la traspuesta de una matriz
	
		copia = Array.new(@fil) {Array.new(@col)}
		
		for i in (0...@fil)
			for j in (0...@col)
				copia[i][j] = matrix[j][i]
			end
		end
		
		Matriz.new(copia)
	
	end

end
