require_relative './user'
require_relative './database/connection'

p "Hello from my project"

user = User.new('email@email.com')
p user.email

Database::Connection.setup
