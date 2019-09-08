class NcaaChamps::Champs
  attr_accessor :name, :opponent, :score, :coach
  
  def self.all
  puts <<-DOC
    1. Champs in 2019
    2. Champs in 2018
    3. Champs in 2017
    4. Champs in 2016
    DOC
    
    champs_1 = self.new 
    champs_1.name = "Virgina"
    champs_1.opponent = "Texas Tech"
    champs_1.score = "68-63"
    champs_1.coach = "TB"
    
    champs_2 = self.new 
    champs_2.name = "Villanova"
    champs_2.opponent = "Michigan"
    champs_2.score = "68-63"
    champs_2.coach = "JW"
    
    champs_3 = self.new 
    champs_3.name = "North Carolina"
    champs_3.opponent = "Gonzaga"
    champs_3.score = "68-63"
    champs_3.coach = "RW"
    
    champs_4 = self.new 
    champs_4.name = "Villanova"
    champs_4.opponent = "North Carolina"
    champs_4.score = "68-63"
    champs_4.coach = "JW"
    
    [champs_1, champs_2, champs_3, champs_4]
    
  end
  
  end

   