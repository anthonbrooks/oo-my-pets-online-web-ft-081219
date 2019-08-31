class Owner
  
  attr_accessor :name 
  attr_reader :species 
  
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
end