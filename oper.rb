count = 0
p count

count.loop do 
  count += 1
  p count
  if count = 10
    break
  end
end