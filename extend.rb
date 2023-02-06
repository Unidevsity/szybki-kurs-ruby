# MODUŁY - MIXINY
# EXTEND

module Creatable
  def create(fields)
    # ... Save fields to db
    p "Fields created: #{fields}"
  end
end

class User
  extend Creatable
end

class Car
  extend Creatable
end

User.create(name: 'Rafał')
Car.create(brand: 'Mercedes')
