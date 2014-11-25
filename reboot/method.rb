def add_bag (products)
products = []
answer ="yes"
while answer == "yes"
  puts "what product do you need?"
  products << gets.chomp.capitalize
  puts "Do you whant another product?"
  answer = gets.chomp
end
return products
end