class PetPoisons::CLI

  def call
  	welcome
  	search_poisons

  end

  def welcome
  	puts "Welcome to Pet Poisons. Is your pet a cat or a dog?"
      input = gets.strip.downcase
  	puts "What did your #{input} eat?"
  	  poison = gets.strip.downcase
  	end
  end

  def search_poisons
  	scrape http://www.petpoisonhelpline.com/poisons/
  end

end
