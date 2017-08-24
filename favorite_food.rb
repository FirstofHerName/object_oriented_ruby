favorite_food =[]

5.times do |food|
  puts "What is you favorite food?"
  input=gets.chomp
  favorite_food << input
end

favorite_food.each_with_index do |food, index|
  puts "#{(index + 1)}. I love #{food}"
end

