# STRUKTURY

# Player = Struct.new(:name, :surname, :position, :club) do
#   def play
#     p "Kopie piłkę"
#   end
# end
#
# lewandowski = Player.new('Robert', "Lewandowski", "napastnik", "Barcelona")
#
# p lewandowski.club
# lewandowski.play

class User
  def initialize(address)
    @address = address
  end

  def city

    @address.city = "Warszawa"
    @address.city
  end

  def street
    @address.street
  end
end

Address = Struct.new(:city, :street)

user = User.new(Address.new('Barcelona', 'La Rambla'))
p user.city

class Player < Struct.new(:name, :surname, :position)
  # name
  # surname
  # position
  def describe
    p "#{@name} #{@surname} #{@position}"
  end
end

messi = Player.new("Leo", "Messi", "Attacker")

p messi.position
