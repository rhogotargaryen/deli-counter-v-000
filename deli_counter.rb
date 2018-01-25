katz_deli = []

def line(katz_deli)
  safe_deli = katz_deli
  if katz_deli.length === 0
    puts "The line is currently empty."
  else
    counter = 1
    safe_deli.each do |person|
      safe_deli[counter - 1] = "#{counter}. #{person}"
      counter += 1
    end
    puts "The line is currently: #{safe_deli.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.length === 0
    puts 'There is nobody waiting to be served!'
  else
    now_serving = katz_deli.shift
    puts "Currently serving #{now_serving}."
  end
end
