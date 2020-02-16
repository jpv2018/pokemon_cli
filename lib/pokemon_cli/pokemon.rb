class Pokemon
  @@all []
  
  attr_accessor :name, :id, :height, :weight, :types
  
  def initialize(name, id, height, weight, types)
    @name = name
    @id = id
    @height = height
    @weight = weight
    @types = types
    save
  end
  
  def save
    @@all << self
  end
  
end