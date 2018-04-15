require "pry"
class Owner
  attr_accessor :owner, :name, :fishes, :dogs, :cats, :pets
  attr_reader :species
  
  OWNER = []
  def initialize(owner)
    @owner = owner
    OWNER << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end
  
  def self.all
    OWNER 
  end
  
  def self.count
    OWNER.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def species
    @species = owner
  end
  
  def say_species
    return "I am a #{owner}."
  end
  
  def name
    @name
  end
  
  def pets 
    @pets
  end
  
  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    if !pets.empty?
      pets.each do |pet, x|
        x.each do |o|
          o.mood = "nervous"
        end
      end
      pets[:dogs] = []
      pets[:cats] = []
      pets[:fishes] = []
    end  
    if !pets.empty?
      return false
    end
  end
  
  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end

