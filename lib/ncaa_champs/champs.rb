class NcaaChamps::Champs
  @@all = []
  attr_accessor :year, :name, :opponent, :score
  
  def initialize(year)
    @year = year
    save
end

 def self.all
    NcaaChamps::Scraper.scrape_champs if @@all.empty?
    @@all
  end
  
def save
  @@all << self
end

   # self.scrape_champs
  
  # def self.scrape_champs
  #   champs = []
    
  #   champs << self.scrape_one
    
  #   champs
  # end
  
  # def self.scrape_one
  #   doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
  #   name = 
  # end
  
  # def self.scrape_two
  #   doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
  # end
  
  # def self.scrape_three
  #   doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
  # end
  
  # def self.scrape_four
  #   doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
  # end
    
  
  end

   