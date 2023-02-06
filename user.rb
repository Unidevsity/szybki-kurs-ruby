class User

  attr_reader :first_name, :last_name, :email, :birth_date

  def initialize(first_name, last_name, email, birth_date)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @birth_date = birth_date
  end

  def print_age
    p "#{first_name} ma obecnie #{age} lat. "
  end

  def metoda
    
  end

  def age
    Date.today.year - birth_date.year
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
