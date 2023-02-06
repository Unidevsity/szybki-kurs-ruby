# BANG METHODS

array = [ "a", "b", "c" ]
p array

p array.map { |letter| letter.upcase }
p array
array.map! { |letter| letter.upcase }
p array

name = "rafal"
name.upcase!

p name

class User
  def initizalize
    @registered = false
  end

  def register!
    @registered = true
    self
  end
end

user = User.new
p user.register!
p user
