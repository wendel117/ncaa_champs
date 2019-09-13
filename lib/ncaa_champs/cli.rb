#CLI CONTROLLER
class NcaaChamps::CLI 
  
  def call  
    puts "hello"
    list_champs
    menu
    goodbye
  end
  
  def get_champs
    NcaaChamps::Scraper.scrape_champs
    @champs = NcaaChamps::Champs.all 
  end
  
  def list_champs
    puts <<-DOC
    WELCOME TO THE NCAA CHAMPION INFORMATION CENTER
    DOC
   @champs = NcaaChamps::Champs.all
   @champs.each.with_index(1) do |year, i|
     puts "#{i}. NCAA Champs of #{year}"
   end
  end
  
  def menu
    input = nil 
    while input != "exit"
    puts "Select option from the list above to see who won and more!"
    puts "(Enter exit to leave or list to view options again)"
    input = gets.strip.downcase
    if input.to_i > 4
      puts "Invalid entry. Please enter your selection. (1-4)"
    elsif input.to_i > 0
      the_champs = @champs[input.to_i-1]
      puts "#{the_champs.name} won in #{the_champs.year}!"
      puts "They beat #{the_champs.opponent}"
      puts "Final score was #{the_champs.score}\n\n"
    elsif input == "exit"
    puts "Thanks for stopping by!"
  elsif input == "list"
    list_champs
  else 
    puts "Invalid entry. please try again. Please enter your selection. (1-4)"
    end
  end
end

def goodbye
  puts "Come back soon!"
end
  
end
