
jour_1 = { "GOO"  => 15, "MMM"  => 14, "ADBE"  => 12, "EA"=> 13, "BA"  => 8, "KO"  => 10, "XOM"  => 20, "GPS"  => 7, "MCD"  => 11, "DIS"  => 15, "CRM"  => 6, "JNJ"  => 10 }
jour_2 = { "GOO"  => 8, "MMM"  => 20, "ADBE"  => 3, "EA"=> 10, "BA"  => 5, "KO"  => 19, "XOM"  => 12, "GPS"  => 6, "MCD"  => 15, "DIS"  => 9, "CRM"  => 10, "JNJ"  => 17 }
jour_3 = { "GOO"  => 3, "MMM"  => 8, "ADBE"  => 15, "EA"=> 5, "BA"  => 10, "KO"  => 5, "XOM"  => 15, "GPS"  => 13, "MCD"  => 10, "DIS"  => 18, "CRM"  => 5, "JNJ"  => 14 }
jour_4 = { "GOO"  => 17, "MMM"  => 3, "ADBE"  => 6, "EA"=> 9, "BA"  => 15, "KO"  => 6, "XOM"  => 8, "GPS"  => 1, "MCD"  => 10, "DIS"  => 15, "CRM"  => 18, "JNJ"  => 3 }
jour_5 = { "GOO"  => 8, "MMM"  => 18, "ADBE"  => 4, "EA"=> 6, "BA"  => 15, "KO"  => 18, "XOM"  => 3, "GPS"  => 12, "MCD"  => 19, "DIS"  => 3, "CRM"  => 7, "JNJ"  => 9 }
jour_6 = { "GOO"  => 10, "MMM"  => 12, "ADBE"  => 8, "EA"=> 3, "BA"  => 18, "KO"  => 20, "XOM"  => 5, "GPS"  => 11, "MCD"  => 3, "DIS"  => 9, "CRM"  => 8, "JNJ"  => 15 }
jour_7 = { "GOO"  => 17, "MMM"  => 14, "ADBE"  => 2, "EA"=> 17, "BA"  => 7, "KO"  => 13, "XOM"  => 1, "GPS"  => 15, "MCD"  => 15, "DIS"  => 10, "CRM"  => 9, "JNJ"  => 17 }

#Liste des entreprises pour boucler sur la liste
entreprises = ["GOO", "MMM", "ADBE", "EA","BA", "KO", "XOM", "GPS","MCD", "DIS", "CRM", "JNJ"]

#initialisation du tableau des prix

for name in entreprises
	array = []
	array += [jour_1["#{name}"]]
	array += [jour_2["#{name}"]]
	array += [jour_3["#{name}"]]
	array += [jour_4["#{name}"]]
	array += [jour_5["#{name}"]]
	array += [jour_6["#{name}"]]
	array += [jour_7["#{name}"]]
	#initialisation variables
	best, ibest, jbest = 0;
	#boucle sur les jours
	for i in 0...7 do
	#on boucle sur les jours suivannts
		for j in i+1...array.length
		#Si la diff est plus grande
			if best < (array[j].to_i - array[i].to_i)
				#on récupere les info des jours
				best = (array[j].to_i - array[i].to_i)
				ibest = i
				jbest = j
			end
		end
	end
	#on affiche
	puts "#{name} => [#{ibest+1},#{jbest+1}] # $#{array[jbest].to_i} - $#{array[ibest].to_i} = $#{best}"
	end







