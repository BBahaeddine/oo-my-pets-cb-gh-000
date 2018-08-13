require "pry"
class Owner
  attr_accessor :name
  attr_reader :species
  attr_accessor :pets
  @@all = []
  
  def initialize(name)
    @name = name
    @pets = pets
    # @species = "human"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  def species(specie)
    @species = "human"
    # say_species
  end
  def say_species
    @species
  end
  
  def pets 
    pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    return pets
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    # binding.pry
  end
  
  def buy_dog
  end 
  
  def buy_cat
  end
end

owner = Owner.new("haha")
