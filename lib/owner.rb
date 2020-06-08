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
    Cats.match {|cat| cat.owner == self }   
  end
  
  def dogs 
    Dogs.match {|dog| dog.owner == self }
  end
  
  def buy_cat 
    
  end
  
  def buy_dog
    
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