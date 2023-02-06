# IF
name = "John"

if name == "John"
  p "This is John"
end

# ELSE
name = "Jake"

if name == 'John'
  p "This is John"
else
  p "This is not John"
end

# ELSIF
name = "Ann"

if name == "John"
  p "This is John"
elsif name == "Jake"
  p "This is Jake"
else
  p "I do not know this guy"
end

# UNLESS
if name != "John"
  p "Where is John?"
end

unless name == "John"
  p "Where is John?"
end

# AND
country = "Poland"

if name == "Ann" && country == "USA"
  p "This is Ann from USA"
end

# OR
name = "Jordan"

if name == "Ann" || country == "Poland"
  p "Hello Ann, this is Poland"
end

# ONE LINER
def say_hello
  p "Hello"
end

day = "monday"

if day == "monday"
  say_hello
end

say_hello if day == "monday"
say_hello unless day == "sunday"

# PRZYPISANIE WARUNKOWE
# day_type -> workday, day off

day_type = if day == "sunday" || day == "saturday"
             "day off"
           else
             "workday"
           end

day_type = "day_off" if day == "sunday"


p day_type
# TERNARY OPERATOR

day == "sunday" ? "day_off" : "workday"
day_type = day == "sunday" ? "day_off" : "workday"
