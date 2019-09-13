class NcaaChamps::Scraper
  def self.scrape_champs
    doc = Nokogiri::HTML(open("https://www.google.com"))
    #binding.pry
  end
  
end