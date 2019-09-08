#CLI CONTROLLER
class NcaaChamps::CLI 
  
  def call  
    list_intro
    list_champs
    menu
    ending
  end
  
  def list_intro
    puts <<-DOC
    WELCOME TO THE NCAA CHAMPION INFORMATION CENTER
    DOC
  end
  
  def list_champs
    @champs = DailyDeal::Champs.all
  
  def menu
    input = nil 
    while input != "exit"
    puts "****Enter a year to find out which team won the NCAA Championship!****"
    puts "(Enter exit to leave)"
    input = gets.strip.downcase
    if input == "2019"
      puts "***Virginia!***"
      more_information
    elsif input == "2018"
      puts "***Villanova!***"
      more_information
    elsif input == "2017"
      puts "***North Carolina!***"
      more_information
    elsif input == "exit"
      puts "Thanks for playing!"
    else
      puts "We don't have information for that year.\n\n"
    end
  end
end
  
  def more_information
    puts "Select an option below for more information:"
    puts "1. Final score"
    puts "2. Location"
    puts "3. Opponent"
    puts "4. Select a different year"
    input = gets.strip
    if input == "1"
      puts "ANSWER: Final Score was *"
    elsif input == "2"
      puts "ANSWER: Location: Somewhere"
    elsif input == "3"
      puts "ANSWER: opponent is you!"
    elsif input == "4"
    menu
  else
    puts "Invalid input, please try again!"
  end
end

def ending
  puts "Stay classy San Diego"
end
  
end
