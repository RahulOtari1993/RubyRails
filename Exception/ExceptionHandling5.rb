
def divider(x,y)
    begin
       ans = (x/y)
    rescue => e
        puts "Error Class : #{e.class} "
        puts "Error Message : #{e.message} "
        puts "Error Traceback : #{e.backtrace} "  

    else
    print "division is #{ans}"
    end 
end


print "enter first number "
a = gets.chomp.to_i

print "enter second number "
b = gets.chomp.to_i

# print "enter third number "
# c = gets.chomp.to_i

begin
 divider(a,b)
rescue => e  
  puts "Error Class : #{e.class} "
  puts "Error Message : #{e.message} "
  puts "Error Traceback : #{e.backtrace} " 
end