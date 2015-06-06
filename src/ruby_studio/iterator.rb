numbers = (1..10).to_a
puts numbers.select {|n| n.even?}

def my_select(array)
  results = []
  array.each do |element|
    results << element if yield(element)
  end
  results
end

puts my_select(numbers) {|n| n.even?}

def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

def five_times
  1.upto 5 do |n|
    yield n
  end
end

five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

conversation {puts "Good to meet you!"}
