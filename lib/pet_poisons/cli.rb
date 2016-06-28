class PetPoisons::CLI

  def call
    start  
  	search_poisons
  end

  def start
    puts "Is your pet a cat or dog (y/n)?"
      input = gets.strip.downcase
      if input == "n"
        puts "Sorry, I only know about dogs and cats."
      elsif input == "y"
  	    self.search_poisons
      else
        puts "Please answer y or n."
        start
  	end
  end

  def search_poisons
    @poisons = PetPoisons::Poison.list_scraper
    puts "What did your pet eat?"
    input = gets.strip.downcase
    if @poisons.include?(input)
      puts"UhOh"
    else
      puts "Good news, #{input} is not toxic."
    end
  end


  def poison_profile(input)
  end


    
    
end

