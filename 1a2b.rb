def matched? input
  input.to_i == @answer.to_i
end

def match input
  numbers = input.split('')
  answer_numbers = @answer.split('')
  numbers.each_with_index do |n,index|
    if n==answer_numbers[index]
      @hint << 'A'
    elsif answer_numbers.include? n
      @hint << 'B'
    end
  end
end

def random
  (0..9).to_a.sample.to_s
end

@answer=''
@hint=[]
4.times {@answer +=  random}
p @answer.to_i

@win = false
until @win == true
  @hint=[]
  input = gets.chomp
  if !/^\d{4}$/.match? input
    p '4 numbers only!'
  elsif matched? input
    @win = true
  elsif match(input)
    result = ''
    counts = Hash.new(0)
    @hint.each { |name| counts[name] += 1 }
    counts.each {|k,v| result += "#{v}#{k}"}
    p "#{result}"
    p 'try again'
  end
end

p 'win!'
