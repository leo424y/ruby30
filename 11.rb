arr = Array.new(6)
sum = []
6.times do |i|
  arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

arr.each_with_index do |x, i|
  x.each_with_index do |y, j|
    sum << arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2] if (i < 4 && j < 4)
  end
end

p sum.max
