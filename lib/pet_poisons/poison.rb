class PetPoisons::Poison
  attr_accessor :name, :toxic, :level, :signs, :description, :type, :alternate_names
  
  def self.search

  	poison = self.new
  	poison.name 
    poison.toxic 
    poison.level
    poison.signs
    poison.description
    poison.type
    poison.alternate_names
  end

  
end