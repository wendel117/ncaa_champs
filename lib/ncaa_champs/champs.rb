class NcaaChamps::Champs
  @@all = []
  attr_accessor :year, :name, :opponent, :score

 def self.all
   
   self.scrape_champs
  end
  
  def self.scrape_champs
    champs = []
    
    champs << self.scrape_champs_1
    champs << self.scrape_champs_2
    champs << self.scrape_champs_3
    champs << self.scrape_champs_4
    
    champs
  end
  
  def self.scrape_champs_1
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    
    champ = self.new
    champ.year = doc.css("div.node__content td").children[0]
    champ.name = doc.css("div.node__content td a").children[0]
    champ.opponent = doc.css("div.node__content td").children[4]
    champ.score = doc.css("div.node__content td").children[3]
    champ
  end

  def self.scrape_champs_2
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    
    champ = self.new
    champ.year = doc.css("div.node__content td").children[6]
    champ.name = doc.css("div.node__content td a").children[1]
    champ.opponent = doc.css("div.node__content td").children[10]
    champ.score = doc.css("div.node__content td").children[9]
   
    champ
  end

  def self.scrape_champs_3
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    
    champ = self.new
    champ.year = doc.css("div.node__content td").children[12]
    champ.name = doc.css("div.node__content td a").children[2]
    champ.opponent = doc.css("div.node__content td").children[16]
    champ.score = doc.css("div.node__content td").children[15]
   
    champ
  end

  def self.scrape_champs_4
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    
    champ = self.new
    champ.year = doc.css("div.node__content td").children[18]
    champ.name = doc.css("div.node__content td a").children[3]
    champ.opponent = doc.css("div.node__content td").children[22]
    champ.score = doc.css("div.node__content td").children[21]
    
    champ
  end
  
end

   