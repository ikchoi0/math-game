class Question
  MIN_NUMER = 1;
  MAX_NUMER = 20;
  attr_accessor :number1, :number2
  def initialize()
    self.number1 = 0
    self.number2 = 0
  end
  def create
    self.number1 = rand(MIN_NUMER...MAX_NUMER)
    self.number2 = rand(MIN_NUMER...MAX_NUMER)
    print "What does #{self.number1} plus #{self.number2} equal?"
  end
  def answer
    self.number1 + self.number2
  end
end