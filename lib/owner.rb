class Owner
  attr_accessor :pets
  @@all = []
  
  def initialize()
    @pets = {
      :fishes => [], 
      :cats => [], 
      :dogs => []
    }
    @@all << self
  end
  
  
end