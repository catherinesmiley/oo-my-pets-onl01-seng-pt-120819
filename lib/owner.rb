require 'pry'

class Owner
  
  attr_reader :name, :species
  
  @@all = []
  @@count = 0 
  
  def initialize(name)
    @name = name 
    @species = "human"
    save
    @@count += 1 
  end
  
  def say_species 
    "I am a #{species}."
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@count 
  end
  
  def self.reset_all
    @@count = 0 
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    cat_name = Cat.new
  end
  
end