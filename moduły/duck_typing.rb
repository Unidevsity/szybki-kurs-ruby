# DUCK TYPING

class Player
  def play
    p "I'm playing football"
  end
end

class Guitar
  def play
    p "I'm playing music"
  end
end

class Gamer
  def play
    p "I play games"
  end
end

def play_with_something(object)
  object.play
end

player = Player.new
guitar = Guitar.new
gamer = Gamer.new

play_with_something(player)
play_with_something(guitar)
play_with_something(gamer)
play_with_something("string")
