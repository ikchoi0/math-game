class Player
  LIFE = 3
  attr_accessor :life, :name
  def initialize(n)
    self.life = LIFE
    self.name = n
  end
  def deduct
    self.life = self.life - 1
  end
end