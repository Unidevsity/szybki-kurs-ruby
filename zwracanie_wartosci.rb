# ZWRACANIE WARTOŚCI PRZEZ METODY
# METODY ZAWSZE ZWRACAJĄ WARTOŚĆ z ostatniej linii

def greeting(name)
  if name == "John"
    return "Hello John"
  end
  "Good morning"
end

returned_greeting = greeting("Peter")

p returned_greeting
p returned_greeting.nil?
