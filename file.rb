file = File.open('address_book.yml')

file.each do |line|
  puts line
end

