class NcaaChamps::Scraper
  def self.scrape_champs
    doc = Nokogiri::HTML(open("https://www.ncaa.com/history/basketball-men/d1"))
    binding.pry
  end
  
end