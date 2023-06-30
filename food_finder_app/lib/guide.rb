require "restaurant"

class Guide
  def initialize(path=nil) 
    # locate the restaurant txt file at path
    Restaurant.filepath = path
    if Restaurant.file_exists?
      puts "found restaurant file."
    # or create a new file.
    elsif Restaurant.create_file
      puts "created restaurant file."
    # exit if create fails.
    else
      puts "exiting.\n\n"
      exit! # quits/stop code.
    end
  end

  def launch!
    #1 introduction
    introduction
    #2 action loop
    #3 what do you want to do? (list, find, add, quit)
    #4 repeat until user quits.
    conclusion
  end

  def introduction
    puts "\n\n<<< Welcome to the Food Finder app >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye and Bon Apetit! >>>\n\n\n"
  end
end