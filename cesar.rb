def chiffre_de_cesar(input, n)
	chiffres = input.split("")
	n.times do
		chiffres.each do |i| 
			if (i.ord >= 97 && i.ord <= 122) || (i.ord >= 65 && i.ord <= 90)
 				if (i.ord == 90)
 					i.sub!("Z", "A")
 				elsif (i.ord == 122)
 					i.sub!("z","a")
 				else
 				    i.next!
 				end
 			end
 		end
 	end
 	chiffres.join("")
end

puts chiffre_de_cesar("oxlrc", 3)