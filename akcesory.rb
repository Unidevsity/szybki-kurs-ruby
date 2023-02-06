# GETTERY i SETTERY
class User
  attr_reader :username, :email
  attr_writer :last_name
  attr_accessor :name

  def initialize(name, email)
    @name = name
    @last_name = ""
    @email = email
    @username = "#{@name}_#{@email}"
  end

  def full_name
    "#{@name} #{@last_name}"
  end

end

user = User.new("rafal", "rafal@grubykodzi.pl")
p user.email
p user.name

user.name = "Rafał"
p user.name

p user.username

user.last_name = "Piekara"

p user.full_name
