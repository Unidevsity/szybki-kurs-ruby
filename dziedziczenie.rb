# DZIEDZICZENIE
class Animal
  def voice
    p "I'm animal"
  end
end

class Cow < Animal
  def voice
    super
    p "Mu mu"
  end
end

animal = Animal.new

cow = Cow.new
cow.voice
