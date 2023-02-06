# ITERATORY

players = %w[Lewandowski Messi Mbappe Benzema Milik]

players.each do |player|
  p player
end

players_with_string_length = players.map do |player|
  "#{player} - #{player.length}"
end

p players_with_string_length


players_with_k = players.select do |player|
  player.include?("k")
end

p players_with_k

player_with_m = players.detect do |player|
  player.include?("M")
end

p player_with_m

players.each_with_index do |player, index|
  p "#{player} - #{index}"
end

p players

players.reverse_each { |player| p player }


# ENUMERABLE
