# PRACA Z HASHAMI (SŁOWNIKAMI)
Hash.new
{}

user = { first_name: "John", "last_name": "Smith", age: 56 }

p user.any? { |key, value| key == :age }
p user.any? { |key, value| key == :email }
p user.any? { |key, value| value == "Smith" }

p user.has_key?(:email)

p user[:first_name]
p user[:email]
user[:email] = "user@email.com"
p user[:email]
p user

p user.has_value?(56)

p user.empty?

new_hash = {}
p new_hash.empty?

p user

p user[:city]

p user.fetch(:city, "London")

p user.length
p user.size

user[:phone] = nil
p user
p user.compact

user_data = user.slice(:first_name, :last_name)
p user_data

p user.reject { |key, value| key == :email }
p user.except(:first_name)
p user.delete(:phone)
p user

p user.delete_if { |key, value| value == 56 }

hash_with_string = { "name" => "John", "age" => 20 }
p hash_with_string
p hash_with_string[:name]
# symbolize_keys
p hash_with_string.transform_keys { |key| key.to_sym }

hash1 = { a: 12, b: 15 }
hash2 = { c: 24, b: 30, d: 120 }
p new_hash = hash1.merge(hash2)

user = {
  name: "Anna",
  address: {
    city: "Kraków",
    street: "Floriańska"
  }
}

p user[:address][:street]
p user.dig(:address, :street)

p user.clear
