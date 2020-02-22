class Hero
  
  attr_accessor :name, :superpower, :bio
  HEROES = []
  
  def initialize(args)
    @name = args[:name]
    @superpower = args[:superpower]
    @bio = args[:bio]
    HEROES << self
  end
  
  def self.all
    HEROES
  end 
end