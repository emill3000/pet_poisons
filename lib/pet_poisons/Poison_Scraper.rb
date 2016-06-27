require "open-uri"
require "nokogiri"
require "pry"

class Poison_Scraper

  def poison_list
  	doc = Nokogiri::HTML(open("http://www.petpoisonhelpline.com/poisons/"))
  	doc.css("ul.landingList a")
  end

  def toxic?(input)
  	input = User.input
  	if poison_list.include input
  		puts "#{input} is toxic. Would you like more information (y/n)?"
  	else
  		puts "#{input} is not toxic. Please call your veterinarian if you have any other concerns."
  	end
  end

end

Poison_Scraper.new.toxic?