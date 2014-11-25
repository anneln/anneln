#require_relative "method"

stock = {
  "Pepito" => { quantity: 200, price: 3 },
  "Lessive" => { quantity: 1, price: 8 },
  "Café" => { quantity: 10, price: 4 },
  "Veleda" => { quantity: 20, price: 2 }
}
puts "Here is the product list:"
stock.each do|product, infos|
  puts "#{infos[:quantity]} #{product} au prix de #{infos[:price]} €"
end

order = {}

while true
  puts "what do you want? type enter to quit"
  product = gets.chomp.capitalize
  break if product == ""
  puts "which amout would you like?"
  amount = gets.chomp.to_i
  if stock.has_key?(product)
  order[product] = amount
    if stock[product][:quantity] >= amount
    order[product] = amount
    else
    puts "not enough #{product} in stock"
  end
end

p products


order = add_bag(stock)

bill = make_the_bill(order, stock)
puts " le total est #{bill} €."




