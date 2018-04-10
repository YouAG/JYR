def somme_de_multiples(numero)
	result = 0
	numero.times do |x| 
		result += x if x%3 == 0 || x%5 == 0
	end
	result
end

puts somme_de_multiples(10) == 23 
puts "-------------------------"
puts somme_de_multiples(1000) == 233168