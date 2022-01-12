

# x = 1

# until x>range
#    print "#{x}\t" unless x%2 == 0
#    x += 1
# end

print "enter number "
num = gets.chomp.to_i

i = num
fact = 1
until i <= 1
    fact = fact * i
    i -= 1
end
print "Factorial is #{fact}" 
