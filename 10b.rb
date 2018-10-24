n = gets.to_i.to_s(2)
@r = 0
@m = []
cc = n.scan(/[01]/).count
p "cc=#{cc}"
p n
cc.times do |c|
  if n[c-1].to_i == 1
    @r+=1
  else
    @m<<@r
    @r=0
  end
  p "r=#{@r}"
  @m<<@r
  p "m=#{@m}"
  p "max=#{@m.max}"
end

puts @m.max
