ns = gets.to_i
ns.times do |n|
    odd = []
    even = []
    xs = gets.to_s.chomp
    xs.split('').each_with_index do |x, index|
      odd << x if index.odd?
      even << x if index.even?
    end
    print "#{even.join} #{odd.join}\n"
end
