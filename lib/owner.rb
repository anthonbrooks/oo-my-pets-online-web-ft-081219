class Owner
  
  attr_reader :name, :species 
  
  def initialize(name)
    @name = name 
    @species = 'human'
  end
  
  def name
    @name 
  end
  
  def species
    @species
  end
  
  def say_species
    "I am a #{@species}"
  end 
end