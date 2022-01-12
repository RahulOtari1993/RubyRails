class Assignment

        def sameDigit

            print "Enter first number :"
            number1 = gets.chomp.to_i

            print "Enter second number :"
            number2 = gets.chomp.to_i

            return (number1 % 10 == number2 % 10)

        end 

        def display 
            puts '*'*20
            puts '@'*20
            puts '#'*20
        end
         
        def leapYear
            print "Enter Year :"
            year = gets.chomp.to_i
            if(year%100==0)
                if(year%4000==0)
                    puts "It is a centuray leap year"
                else
                    puts "Year is centuray but not leap year"
                end
            elsif year%4==0
                puts "It is non centuray leap year"
            elsif
                puts "Year is not leap year"
            end
        end 

        def stringOccurerence
            print "enter String "
            str = gets.chomp
            if str[1..4]=="java"
                puts str[5..str.length-1]
            else
                puts str
           end
        end 

        def stringOperation
             print "enter String "
            str = gets.chomp
            if str[0]=='p' && str[1]=='s'
                puts str[0..1]
            else
                puts 
            end
        end 

        def inegerOperation
            print "Enter first number :"
            num1 = gets.chomp.to_i
            
            print "Enter second number :"
            num2 = gets.chomp.to_i
            
            if num1>num2
                return num1
            end
            if num2>num1
                return num2
            end
        end 

        def numbersRange
            print "Enter first number :"
            num1 = gets.chomp.to_i
            
            print "Enter second number :"
            num2 = gets.chomp.to_i

            if ((num1>=10 && num1 <= 20)&&(num2>=10 && num2<= 20))
                print "between the range of 10..20"
            elsif ((num1>=20 && num1 <= 30)&&(num2>=20 && num2<= 30))
                print "between the range of 20..30"
            else
                print "Invalid range "
            end
        end 

        def largerNumberRange
             print "Enter first number :"
             num1 = gets.chomp.to_i
            
            print "Enter second number :"
            num2 = gets.chomp.to_i 

                if (num1>=20 && num1<=30) || (num2>=20 && num2<=30)
                    if num1>num2
                        puts "#{num1}"
                    elsif 
                        puts "#{num2}"
                    else
                        return 0
                    end
                end


        end

        def stringInclude
             puts "Enter a string:"
             str=gets.chomp 

             puts str.include? "i"
        end

end


qstn = Assignment.new 
puts qstn.sameDigit
qstn.display
qstn.leapYear  
qstn.stringOccurerence 
qstn.stringOperation
puts qstn.inegerOperation   
qstn.numbersRange
qstn.largerNumberRange 
qstn.stringInclude  