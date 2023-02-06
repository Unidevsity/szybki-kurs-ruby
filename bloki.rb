# BLOKI



def print_flowers(&block)
  flowers = ["tulipan", "róża", "stokrotka"]
  text = yield(flowers) if block_given?
  p flowers
  p text
end

print_flowers do
  p "block"
  "Ulubione kwiatki"
end
