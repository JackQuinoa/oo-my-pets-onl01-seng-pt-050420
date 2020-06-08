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
    Cat.all.select {|cat| cat.owner == self } 
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self } 
  end
 
  def buy_cat(name) 
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.select {|dog| dog.owner == self ? dog.mood = "happy" : nil}
  end
  
  def feed_cats
    Cat.all.select {|cat| cat.owner == self ? cat.mood = "happy" : nil}
  end
  
  def sell_pets 
     self.dogs.each {|dog| dog.mood = "nervous"} && self.cats.each {|cat| cat.mood = "nervous"}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." 
  end
  
end