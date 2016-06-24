require "open-uri"
require "nokogiri"
require "pry"

class Poison_Scraper

  def toxic?
  	doc = Nokogiri::HTML(open("http://www.petpoisonhelpline.com/poisons/"))
  	binding.pry

  end

end

Poison_Scraper.new.toxic?