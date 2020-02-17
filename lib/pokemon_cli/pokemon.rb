class Pokemon
  @@all = []
  
  attr_accessor :name, :id, :height, :weight
  
  def initialize(name, id, height, weight)
    @name = name
    @id = id
    @height = height
    @weight = weight
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    @@all.detect do |pokemon|
      pokemon.name == name
    end
  end
  
end