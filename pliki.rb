unless File.exist?("pliki/names.txt")
  File.new("pliki/names.txt", 'w')
end

# w - write
# w+ - read & write
# r - read only
# a - append

file = File.open("pliki/names.txt")
file.readlines(&:chomp)

file.close

File.foreach("pliki/names.txt") { |line| line}

File.open("pliki/names.txt") do |file|
  p file.readlines
end


File.open("pliki/names.txt", "a") do |file|
  # file.write("Michał")
  file.puts("Grzesiek")
end

names = ["Peter", "John", "Paul"]

File.write("pliki/names.txt", names, mode: 'a')

File.rename("pliki/names.txt", "pliki/imiona.txt")

File.size("pliki/names.txt")

File.dirname("pliki/names.txt")

File.directory?("pliki")

File.delete("pliki/names.txt")
