
# begin
# num = 10/0
# rescue  
#     print "Divide by zero"
# end

# num = [12,5,4,7,5,2]

# begin
#     puts["dogs"]
# rescue
#     print "Type Error"
# end

# begin 
#     num = 10/0
# rescue ZeroDivisionError => e  
#     puts e.message 
# end

# print "enter first number : "
# x = gets.chomp.to_i  

# print "enter second number : "
# y = gets.chomp.to_i

num = [12,5,4,7,5,2]

begin 
    # ans = (x/y)
    puts num["dog"]

rescue ZeroDivisionError => e  
     print "\nException : #{e.message} "
rescue TypeError => e  
     print "\nException : #{e.message} "
else
    print "division is : #{ans} "

ensure
    print "\nExample of Exception handling "

end 