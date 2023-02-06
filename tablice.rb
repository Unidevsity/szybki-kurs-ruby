# TABLICE

Array

array = Array.new

array = []

numbers = [1, 2, 3, 4, 5, 7 ,9, 109, 456, 1024]

p numbers.size
p numbers.length
p numbers.count
p numbers.count { |number| number > 100 }

numbers = [1, 2, 3, 4, 5, 7 ,9, 109, 456, 1024]
p numbers[0]
p numbers[1]
p numbers[-1]
p numbers[-2]

p numbers[2..3]

numbers = [1, 2, 3, 4, 5, 7 ,9, 109, 456, 1024, 0]

p numbers.all? { |el| el.positive? }
p numbers.all? { |el| el.negative? }

p numbers.any? { |el| el == 9 }
p numbers.any? { |el| el.zero? }

numbers = [1, 2, 3, 4, 5, 7 ,9, 109, 456, 1024, 0]

p numbers.none? { |el| el.nil? }

p numbers.first
p numbers.last

p numbers.detect { |el| el > 400 }
p numbers.select { |el| el > 400 }

numbers = [1, 2, 3, 4, 5, 7 ,9, 109, 456, 1024, 0]

p numbers.include?(109)
p numbers.include?(110)

numbers = [1, 2, 3, 4, 5, 7, 7,9, 109, 456, 1024, 0, nil]

p numbers.uniq
p numbers.compact

p numbers.sample(3)

p numbers.shuffle

numbers = [1, 2, 3, 4, 5, 7, 7,9, 109, 456, 1024, 0, nil]

p numbers.index(109)

p numbers.delete_if { |el| el.nil? }

people = []
people[0] = "John"
p people
people[3] = "Mary"
p people

people.clear
p people
people.push("John")
people << "Mary"
p people
people.unshift("Mark")
p people

people.shift
p people
people.pop
p people
p numbers

p people + numbers

tablica_stringów = ['a', 'b', 'c']
tablica_stringów = %w[a b c]
p tablica_stringów

tablica_symboli = [:a, :b, :c]
tablica_symboli = %i[a b c]
p tablica_symboli

p numbers = [1,2,3,4,5]
p numbers.inject(:+)

p [1,2,3,4,5].inject(:*) # FACTORIAL
