require "pry"
class Owner

  attr_reader :name , :species 
  
  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species 
    @@all << self 
  end
  
  def say_species
    "I am a #{@species}." 
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    @@all.count 
  end
  
  def self.reset_all 
    @@all.clear
  end
  
  def cats 
  #  binding.pry
    Cat.all.select {|cat| cat.owner == self } 
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self } 
  end
  
  def buy_cat 
    binding.pry 
    Cat.new(name, self)
  end
  
  def buy_dog
    Dog.new(name, self)
  end
  
  def walk_dogs
    
  end
  
  def feed_cats
    
  end
  
  def sell_pets 
    
  end
  
  def list_pets
    
  end
  
end