class Assignment 

    def menu
        puts "1.Here Doccument"
        puts "2.String program"
        puts "3.String Pattern"
        puts "4.Volume Of Sphere"
        puts "5.String First & Last Character Swap"
        puts "6.unless until"
        puts "7.absolute deffierence"
        puts "8.Maximun of two numbers"
        puts "9.Conditional Statement Program"
        puts "10.Greater of three numbers"

        print "Enter Your Choice :"
        choice = gets.chomp.to_i 

        case choice 
            when 1
                        puts(
                                <<-eos
                                Sample string :
                                a string that you "don't" have to escape
                                This
                                is a ....... multi-line
                                heredoc string --------> example
                                eos
                            )
            when 2 
                          print "enter one string :"
                          str = gets.chomp.to_s 
                           str1 = str.split.first
                           if str1 != "if"
                              puts str.insert(0, "if")
                           else
                              puts str 
                           end     
            when 3 
                          print "enter value of n"
                          n = gets.chomp.to_i
                          str = "abc"
                          i=0
                          while i<=3
                            puts str 
                            puts str*n
                            i+=1 
                          end                
            when 4
                        print "Enter Radius : "
                        radius = gets.chomp.to_i 
                        volume = (4/3)*3.14*radius*radius*radius
                        print "volume is #{volume}"              
            when 5
                          print "enter one string :"
                          str = gets.chomp.to_s 
                          x =  str.length  
                          temp = str[0]
                          str[0] = str[x-1]
                          str[x-1] = temp 
                          print str 
            when 6
                        print "enter number :"
                        number1 = gets.chomp.to_i
                        print "You Are Minor" unless number1 >= 18
            when 7 
                        print "enter one number :"
                        number1 = gets.chomp.to_i
                        ans =  33 - number1 
                        print "basic difference is #{ans}\n"
                        ans*=2
                        puts "double difference is #{ans}"  
                       
            when 8
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i
                        if number1 > number2 
                             print "maximum number is #{number1}"
                        elsif number2 > number1
                            print "maximum number is #{number2}"
                        else
                            print "Both are equal"
                        end
            when 9
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i
                        if number1==20
                            print number1 
                        elsif number2 == 20
                            print number2 
                        else
                            print "sum is #{number1+number2}"
                        end
                            

            when 10
                        print "enter first number :"
                        number1 = gets.chomp.to_i 
                        print "enter second number :"
                        number2 = gets.chomp.to_i
                        print "enter third number :"
                        number3 = gets.chomp.to_i
                        if(number1>number2 && number1>number3)
                            print "#{number1} is greater"
                        elsif(number2>number1 && number2>number3)
                            print "#{number2} is greater"
                        elsif(number3>number1 && number3>number2)
                            print "#{number3} is greater"
                        else
                            print "All Are Equal"
                        end    
            else
                print "Please Enter Valid Choice :"
        end
    end 
 
   
end

qutn = Assignment.new 
qutn.menu