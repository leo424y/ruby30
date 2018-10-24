ns = gets.to_i
book = {}
ns.times do |n|
    xs = gets.to_s.chomp
    page = xs.split(' ')
    book[page[0]]=page[1]
end

ns.times do |n|
    xs = gets.to_s.chomp
    puts book[xs] ? "#{xs}=#{book[xs]}" : 'Not found'
end
