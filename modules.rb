# MODUŁY
class Player
  def play
    p "I'm playing football"
  end
end

player = Player.new
player.play

module Nameable
  def name
    p "This object is"
  end
end
