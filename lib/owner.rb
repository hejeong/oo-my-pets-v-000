require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  # Instance Methods
  def initialize(species)
    @species = species
    @pets = {
      :fishes => [], 
      :cats => [], 
      :dogs => []
    }
    @@all << self
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end 
  
  def say_species
    "I am a #{@species}."
  end
  
  # Class Methods
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
end