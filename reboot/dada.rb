def race_state(race)
  return "les 2 premiers chevaux sont #{race[0]} et #{race[1]} et le dernier est #{race.last}"
end

chevaux = ["Tornado", "Eclair", "Princesse", "Rapido", "Flèche"]

chevaux.each_with_index do |cheval, index|
  puts "#{index+1} #{cheval}"
end

puts "quel cheval voulez vous jouez, gagnant?"
cheval = gets.chomp.capitalize

puts "c'est parti!"

3.times do
  sleep(2)
  course = chevaux.shuffle
  puts race_state(course)
end

if cheval == chevaux.shuffle[0]
  puts "Bravo vous avez gagné"
else
  puts "Retentez votre chance."
end

puts "quel est votre tiercé gagnant?"
cheval1 = gets.chomp.capitalize
cheval2 = gets.chomp.capitalize
cheval3 = gets.chomp.capitalize
puts "c'est parti!"

3.times do
  sleep(2)
  course = chevaux.shuffle
  puts race_state(course)
end
course = chevaux.shuffle
if cheval1 == course[0] && cheval2 == course[1] && cheval3 == course[2]
  puts "super, vous avez un tiercé gagnant!"
else
  puts "vous avez perdu!"
end


