#CLI CONTROLLER
class NcaaChamps::CLI 
  
  def call  
    list_champs
    menu
  end
  
  def list_champs
    puts <<-DOC
    WELCOME TO THE NCAA CHAMPION INFORMATION CENTER
    Select an option from the list below to see who won!
    DOC
   @champs = NcaaChamps::Champs.all
   @champs.each.with_index(1) do |year, i|
     puts "#{i}. NCAA Champs of #{year}"
   end
  end
  
  def menu
    input = nil 
    while input != "exit"
    input = gets.strip.downcase
    if input.to_i > 0
      the_champs = @champs[input.to_i-1]
      puts "#{the_champs.name}"
      more_information
    elsif input == "exit"
    puts "Thanks for playing!"
    else
      puts "Invalid entry. Please enter your selection. (1-4)"
    end
  end
end
  
  def more_information
    puts "Select an option below for more information:"
    puts "1. Final score"
    puts "2. Location"
    puts "3. Opponent"
    puts "4. Start over"
    input = gets.strip
    if input == "1"
      puts "ANSWER: Final Score was *"
      playagain
    elsif input == "2"
      puts "ANSWER: Location: Somewhere"
      playagain
    elsif input == "3"
      puts "ANSWER: opponent is you!"
      playagain
    elsif input == "4"
    list_champs
  else
    puts "Invalid input, please try again!"
end
end

def playagain
  puts "Would you like to play again? (Enter yes or no)"
  input = gets.strip
  if input == "yes"
    list_champs
  elsif input == "no"
  puts "Aw shucks. Enter exit to leave program."
end
end
  
end
