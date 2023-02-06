# CASE WHEN
name = "John"

if name == "John"
  p "Hi John"
elsif name == "Ann"
  p "Hi Ann, how are you?"
elsif name == "Jake"
  p "Whats up"
else
  p "Who are you?"
end

case name
when "John"
  p "Hi John"
when "Ann"
  p "Hi Ann, how are you?"
when "Jake"
  p "Whats up"
else
  p "Who are you?"
end
