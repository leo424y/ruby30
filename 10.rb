# 算位數
# n = gets.to_i
#
# def result n
#   @r ||= 1
#   if n>10
#     (@r+=1)
#     result(n/10)
#   else
#     @r
#   end
# end
#
# print result n


n = gets.to_i.to_s(2)
@r = 0
c = n.scan(/[01]/).count

c.times do
  if n[c-1].to_i == 1
    @r+=1
  else
    @r=0
  end
  @r
end

print @r
