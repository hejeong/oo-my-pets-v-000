class Owner
  attr_accessor :pets
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
  
  def say_species
    puts "I am a #{species}."
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