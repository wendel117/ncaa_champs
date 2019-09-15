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
  end
  
  def self.scrape_champs_1
    doc = Nokogiri::HTML(open(https://www.ncaa.com/history/basketball-men/d1))
    champs_1 = self.new 
    champs_1.year = doc.css("div.node__content td").children[0]
    champs_1.name = doc.css("div.node__content td a").children[0]
    champs_1.opponent = doc.css("div.node__content td").children[4]
    champs_1.score = doc.css("div.node__content td").children[3]
    
  end

  def self.scrape_champs_2
    doc = Nokogiri::HTML(open(https://www.ncaa.com/history/basketball-men/d1))
    champs_2 = self.new 
    champs_2.year = doc.css("div.node__content td").children[6]
    champs_2.name = doc.css("div.node__content td a").children[1]
    champs_2.opponent = doc.css("div.node__content td").children[10]
    champs_2.score = doc.css("div.node__content td").children[9]
    
  end

  def self.scrape_champs_3
    doc = Nokogiri::HTML(open(https://www.ncaa.com/history/basketball-men/d1))
    champs_3 = self.new 
    champs_3.year = doc.css("div.node__content td").children[12]
    champs_3.name = doc.css("div.node__content td a").children[2]
    champs_3.opponent = doc.css("div.node__content td").children[16]
    champs_3.score = doc.css("div.node__content td").children[15]
    
  end

  def self.scrape_champs_4
    doc = Nokogiri::HTML(open(https://www.ncaa.com/history/basketball-men/d1))
    champs_4 = self.new 
    champs_4.year = doc.css("div.node__content td").children[18]
    champs_4.name = doc.css("div.node__content td a").children[3]
    champs_4.opponent = doc.css("div.node__content td").children[22]
    champs_4.score = doc.css("div.node__content td").children[21]
    
  end
  
end

   