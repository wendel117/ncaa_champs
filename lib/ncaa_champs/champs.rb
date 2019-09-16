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
    year = doc.css("div.node__content td").children[0]
    name = doc.css("div.node__content td a").children[0]
    opponent = doc.css("div.node__content td").children[4]
    score = doc.css("div.node__content td").children[3]
    
  end

  def self.scrape_champs_2
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    year = doc.css("div.node__content td").children[6]
    name = doc.css("div.node__content td a").children[1]
    opponent = doc.css("div.node__content td").children[10]
    score = doc.css("div.node__content td").children[9]
    
  end

  def self.scrape_champs_3
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    year = doc.css("div.node__content td").children[12]
    name = doc.css("div.node__content td a").children[2]
    opponent = doc.css("div.node__content td").children[16]
    score = doc.css("div.node__content td").children[15]
    
  end

  def self.scrape_champs_4
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    year = doc.css("div.node__content td").children[18]
    name = doc.css("div.node__content td a").children[3]
    opponent = doc.css("div.node__content td").children[22]
    score = doc.css("div.node__content td").children[21]
    
  end
  
end

   