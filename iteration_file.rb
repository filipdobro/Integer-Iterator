#benutzerdefinierter Startwert
puts("Definieren Sie den Startwert:")
@x = gets.chomp
@x = @x.to_i
@x_negative = @x
#definierte Gleichung mit Resultat -- x wird gesucht
@equation = 30*@x
@equation_result = 90

#Variablen für Loop break(Begrenzung für den Loop)
@numberLoopsPositive = 0
@numberLoopsNegative = 0


#Iterationsschleife
loop{

	if @equation.to_i == @equation_result.to_i
		puts("X-Variable hat den Wert #{@x}")
		break

	else
		@x += 1
		@equation = 30*@x

		@numberLoopsPositive += 1
		if @numberLoopsPositive == 10000
			break
		end
	end


}

if @numberLoopsPositive == 10000

	#Initialisierung für negativen Wert
	@equation = 30*@x_negative

	loop{	

			if @equation.to_i == @equation_result.to_i
				puts("X-Variable hat den Wert #{@x_negative}")
				break

			else
				@x_negative -= 1
				@equation = 30*@x_negative
				@numberLoopsNegative += 1

				if @numberLoopsNegative == 10000
				puts("[!] Es konnte kein passender Wert für die Variable x gefunden werden.\nVersuchen Sie es erneut mit einem anderem Startwert.")	
				break
				end

			end
		}
end

