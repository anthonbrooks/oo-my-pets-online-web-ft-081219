class Owner
  
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = 'human'
    @@all << self
  end
  
  def name
    @name 
  end
  
  def species
    @species
  end
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all 
  end
  
  def self.count 
    self.all.length 
  end 
  
  def self.reset_all
    self.all.clear 
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self 
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self 
  end 
end