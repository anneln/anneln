def calculate(first_number, second_number, operator)

  if operator == "+"
    result = first_number + second_number
  elsif operator == "-"
    result = first_number - second_number
  else operator == "*"
    result = first_number * second_number
  end
  return result
end


puts "entrez le 1er chiffre:"
first_input = gets.chomp.to_i

puts "entrez le 2nd chiffre:"
second_input = gets.chomp.to_i

puts "choisissez un opérateur: '+', '-', '*', '/'"
sign = gets.chomp


result = calculate(first_input, second_input, sign)

puts "le résultat de #{first_input} #{sign} #{second_input} est: #{result}"
#   case operator
#   when "+"
#     result = first_number + second_number
#   when "-"
#     result = first_number - second_number
#   when "*"
#     result = first_number * second_number
#   when "/"
#     result = first_number / second_number
#   end
#     return result
# end
while true
  puts "voulez vous faire une autre opération?"
  answer = gets.chomp
  if answer == "yes"
    calculate(first_input, second_input, sign)
  end
break if answer == "no"
end
