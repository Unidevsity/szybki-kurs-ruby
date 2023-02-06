require 'date'
require_relative './user.rb'

p "hello world!"

p "Dzisiaj będzie świetna pogoda 🌞"

user = User.new("John", "Doe", "john@email.com", Date.new(2000, 12, 12))

p user.print_age
