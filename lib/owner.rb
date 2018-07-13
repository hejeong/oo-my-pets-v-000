class Owner
  attr_accessor :pets
  @@all = []
  
  def initialize()
    @pets = {
      :fishes => [], 
      :cats => [], 
      :dogs => []
    }
  end
end