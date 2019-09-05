#CLI CONTROLLER
class NcaaChamps::CLI 
  
  def call  
    puts "NCAA Champs"
    list_intro
    menu
  end
  
  def list_intro
    puts <<-DOC
    Welcome to the NCAA Champions Information Center
    DOC
  end
  
  def menu
    input = nil 
    while input != "exit"
    puts "Enter a year to find out which team won the NCAA Championship!"
    puts "(Enter exit to leave)"
    input = gets.strip.downcase
    if input == "2019"
      puts "Virginia"
      more_information
    elsif input == "2018"
      puts "Villanova"
      more_information
    elsif input == "2017"
      puts "North Carolina"
      more_information
    elsif input == "exit"
      puts "Ok see ya!"
    else
      puts "We don't have information on that year yet, try back soon!\n\n"
    end
  end
end
  
  def more_information
    puts "Enter 1 to view final score; Enter 2 to view location; Enter 3 to view opponent; Enter 4 to select a new year; Enter exit to leave"
    input = gets.strip
    if input == "1"
      puts "Final Score is *"
    elsif input == "2"
      puts "Location: Somewhere"
    elsif input == "3"
      puts "opponent is you!"
    elsif input == "4"
    menu
    elsif input == "exit"
    puts "Goodbye! See you next time."
  end
end
  
  
end
