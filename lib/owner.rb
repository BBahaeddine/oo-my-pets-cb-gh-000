require "pry"
class Owner
  attr_accessor :name
  attr_reader :species
  attr_accessor :pets
  @@all = []
  
  def initialize(name)
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
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
  
  def species
    @species = "human"
  end
  
  def say_species
    return "I am a #{self.species}."
  end
  
  # def pets 
  #   return {
  #     :fishes => [],
  #     :dogs => [],
  #     :cats => []
  #   }
  # end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_dog
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end 
  
  def buy_cat
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
end

owner = Owner.new("haha")
