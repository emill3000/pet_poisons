class PetPoisons::CLI

  def call
  	puts "Welcome"
    start  
# 	search_poisons

  end

  def start
    puts "Is your pet a cat or dog (y/n)?"
      input = gets.strip.downcase
      if input == "n"
        puts "Sorry, I only know about dogs and cats."
      elsif input == "y"
  	    puts "What did your pet eat?"
  	    poison = gets.strip.downcase
      else
        puts "Please answer y or n."
        start
  	end
  end

#  def search_poisons
#  	scrape http://www.petpoisonhelpline.com/poisons/
#  end

end
