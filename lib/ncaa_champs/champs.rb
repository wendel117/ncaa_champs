class NcaaChamps::Champs
  attr_accessor :name, :opponent, :score, :year
  
  def self.all
    
    champs_1 = self.new 
    champs_1.year = "2019"
    champs_1.name = "Virgina"
    champs_1.opponent = "Texas Tech"
    champs_1.score = "68-63"
    
    champs_2 = self.new 
    champs_2.year = "2018"
    champs_2.name = "Villanova"
    champs_2.opponent = "Michigan"
    champs_2.score = "68-63"
    
    champs_3 = self.new 
    champs_3.year = "2017"
    champs_3.name = "North Carolina"
    champs_3.opponent = "Gonzaga"
    champs_3.score = "68-63"
    
    champs_4 = self.new 
    champs_4.year = "2016"
    champs_4.name = "Villanova"
    champs_4.opponent = "North Carolina"
    champs_4.score = "68-63"
    
    [champs_1, champs_2, champs_3, champs_4]
    
  end
  
  end

   