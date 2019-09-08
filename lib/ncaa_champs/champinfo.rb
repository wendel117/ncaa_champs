class NcaaChamps::Champinfo
  
  def self.champions
    puts <<-DOC
      1. 2015 Champs
      2. 2016 Champs
      3. 2017 Champs
      4. 2018 Champs
      5. 2019 Champs
    DOC 
    
    champs_1 = self.new 
    champs_1.name = "
    