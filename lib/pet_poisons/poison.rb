class PetPoisons::Poison
  attr_accessor :name, :toxic, :level, :signs, :description, :type, :alternate_names
  
  def self.list_scraper
  	#scrape pet poison helpline return y/n toxic, if y, everything else
  	poisons = []
    doc = Nokogiri::HTML(open("http://www.petpoisonhelpline.com/poisons/"))
      doc.css("ul.landingList a")#.collect do |poison|
      #poisons << poison
   
      #poisons
   binding.pry
  end

  #def self.profile_scraper
    #poison = Nokogiri::HTML(open("http://www.petpoisonhelpline.com/poison/#{poison}"))
  #end 
end