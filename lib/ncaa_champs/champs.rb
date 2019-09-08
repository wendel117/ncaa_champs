class NcaaChamps::Champs
  attr_accessor :name, :opponent, :score, :coach
  
  def self.all
    puts <<-DOC
      1. 2015 Champs
      2. 2016 Champs
      3. 2017 Champs
      4. 2018 Champs
      5. 2019 Champs
    DOC 
    
    champs_1 = self.new 
    champs_1.name = "Duke"
    champs_1.opponent = "Wisconsin"
    champs_1.score = "68-63"
    champs_1.coach = "MK"
    
    champs_2 = self.new 
    champs_2.name = "Duke"
    champs_2.opponent = "Wisconsin"
    champs_2.score = "68-63"
    champs_2.coach = "MK"
    
    champs_3 = self.new 
    champs_3.name = "Duke"
    champs_3.opponent = "Wisconsin"
    champs_3.score = "68-63"
    champs_3.coach = "MK"
    
    champs_4 = self.new 
    champs_4.name = "Duke"
    champs_4.opponent = "Wisconsin"
    champs_4.score = "68-63"
    champs_4.coach = "MK"
    
    champs_5 = self.new 
    champs_5.name = "Duke"
    champs_5.opponent = "Wisconsin"
    champs_5.score = "68-63"
    champs_5.coach = "MK"
    
  end
end