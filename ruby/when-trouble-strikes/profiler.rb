require 'profile'

count = 0
File.foreach('lipsum.txt') do |line|
  count += 1 if line.length > 6
end

puts "Line with specific length: #{count}"
