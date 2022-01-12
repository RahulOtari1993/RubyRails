

begin 
    print "enter first number : "
    x = gets.chomp.to_i  

    print "enter second number : "
    y = gets.chomp.to_i
    ans = (x/y)
    print "division is : #{ans} "

rescue ZeroDivisionError => e 

    puts e.message
    retry 
end        
