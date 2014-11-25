nail_lenght = 10
puts "le clou fait #{nail_lenght} cm"
players = []
players << gets.chomp.capitalize
players << gets.chomp.capitalize

puts "#{players[index]} go on, pick a force from 1 to 5:"

force = gets.chomp.to_i
factor = rand(0..10)

while nail_lenght > 0
  nail_lenght = nail_lenght - force * factor
  puts "le clou fait #{nail_lenght} cm."
end

