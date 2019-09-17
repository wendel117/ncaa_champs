class NcaaChamps::Champs
  @@all = [] #empty array ready for instances
  attr_accessor :year, :name, :opponent, :score #creates reader and writer for each instance variable

  def self.all #class method for all
   
   self.scrape_champs #takes each instance stored in champs array and puts in @@all array
  end
  
  def self.scrape_champs #class method
    champs = [] #empty array, ready for instances
    
    champs << self.scrape_champs_1 
    champs << self.scrape_champs_2
    champs << self.scrape_champs_3
    champs << self.scrape_champs_4
    #each champion set of info shoveled into champs array
    champs #return array
  end
  
  def self.scrape_champs_1 #class method
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    
    champ = self.new #creates the instance
    champ.year = doc.css("div.node__content td").children[0]
    champ.name = doc.css("div.node__content td a").children[0]
    champ.opponent = doc.css("div.node__content td").children[4]
    champ.score = doc.css("div.node__content td").children[3]
    #scrapes info into each instance variable
    champ #returns the instance
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

   