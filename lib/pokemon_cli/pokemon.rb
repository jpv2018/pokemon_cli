class Pokemon
  @@all = []
  
  attr_accessor :name, :id, :height, :weight, :types
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
end