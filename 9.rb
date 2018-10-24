def factorial(n)
    n>0 ? n*factorial(n-1) : 1
end
n = gets.to_i
result = factorial n
puts result
