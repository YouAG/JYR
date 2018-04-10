
def stockPicker(prix)
  meilleur_achat = 0 
  meilleur_vente = 0 
  meilleur_profit = 0 
  
  prix.each do |acheter|
    
    
  prix.each do |vendre|
    profit = vendre - acheter 
      if profit > meilleur_profit 
        meilleur_profit = profit
        meilleur_achat = prix.index(acheter)
        meilleur_vente = prix.index(vendre)
    end 
  end 
  end 
   puts "le meileur jour pour acheter est le #{meilleur_achat} et le meilleur jour pour vendre est le #{meilleur_vente} pour un profit total de #{meilleur_profit}$"
end 

stockPicker([17,3,6,9,15,8,6,1,10])