class Assignment 

    def menu
        puts "1.Ruby Version With Patch Number\t"
        puts "2.Current Date And Time\t"
        puts "3.Pattern Printing\t"
        puts "4.Area Of Circle\t"
        puts "5.String program\t"
        puts "6.String Reverse Program\t"
        puts "7.File Operation\t"
        puts "8.Conditional Statement first Program\t"
        puts "9.Conditional Statement second Program\t"
        puts "10.Conditional Statement third Program\t"

        print "Enter Your Choice :"
        choice = gets.chomp.to_i 

        case choice 
            when 1
                        puts "ruby version is : #{RUBY_VERSION} "
                        puts "ruby patch level is : #{RUBY_PATCHLEVEL}"
            when 2 
                        time = Time.new
                        puts "current date and time is : #{time}"       
            when 3
                        for i in 1..5
                            for j in 1..i  
                                print "a"
                            end
                             puts
                        end 
            when 4
                        print "Enter Radius : "
                        radius = gets.chomp.to_i 
                        area = 3.14*radius*radius
                        circumference = 2*3.14*radius 
                        puts "Area Of Circle Is : #{area}"
                        puts "Circemference Of Circle Is : #{circumference}"                
            when 5
                        print "enter one string :"
                        str = gets.chomp.to_s
                        puts str.start_with?("if")
            when 6
                        print "enter first string :"
                        str1 = gets.chomp.to_s
                        print "enter second string :"
                        str2 = gets.chomp.to_s
                        puts "#{str1} #{str2}".split.reverse.join(" ")
            when 7 
                        file = File.open("abc.txt" , "r")
                        puts File.extname(file)
            when 8
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i 
                        if (number1>=20 && number1<=30) || (number2>=20 && number2<=30)
                            print "Number lies between 20 to 30"
                        else
                            print "number is not lies between 20 to 30"
                        end  
            when 9
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i
                        print "enter third number :"
                        number3 = gets.chomp.to_i 
                        if (number1>=1 && number1<=10)||(number2>=1 && number2<=10)||(number3>=1 && number3<=10)
                            print "Small Number."   
                        end

            when 10
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i
                        if((number1>=1 && number1<=10) && !(number2>=1 && number2<=10))||((number2>=1 && number2<=10) && !(number1>=1 && number1<=10))
                        print "small number"
                        else
                            print "Invalid Numbers"
                        end
            else
                print "Please Enter Valid Choice :"
        end
    end 
 
   
end

qutn = Assignment.new 
qutn.menu