class OperatorsExample
    @val1
    @val2
    @val3 
    @ans
    $c
    def accept 
        print "Enter First Number :"
        @val1 = gets.chomp.to_i 
        print "Enter Second Number :"
        @val2 = gets.chomp.to_i
    end
    def accept1 
        print "Enter Third Number :"
        @val3 = gets.chomp.to_i 
    end
    def accept2 
       print "Enter One Number :"
       @val4 = gets.chomp.to_i 
   end

    def arithmaticOperators
        if $c == 1
        @ans = @val1 + @val2 
        print "Addition of #{@val1} and #{@val2} is #{@ans}\n"
        
         elsif $c == 2
         @ans = @val1 - @val2
         print "Subtraction of #{@val1} and #{@val2} is #{@ans}\n"
         
         elsif $c == 3 
         @ans = @val1 * @val2
         print "Multiplication of #{@val1} and #{@val2} is #{@ans}\n"

         elsif $c == 4
         @ans = @val1 / @val2
         print "Division of #{@val1} and #{@val2} is #{@ans}\n"

         elsif $c == 5
         @ans = @val1 % @val2
         print "Modulus of #{@val1} and #{@val2} is #{@ans}\n"

         else 
            print "Please Enter Valid Choice :"
        end
     end

    def assignmentOperators
        if $c == 1
        @val1+=@val2 
        print "Addition is #{@val1}\n"
        
        elsif $c == 2
        @val1-=@val2
        print "Subtraction is #{@val1}\n"

        elsif $c == 3
        @val1/=@val2
        print "Division is #{@val1}\n"

        elsif $c == 4
        @val1*=@val2
        print "Multiplication is #{@val1}\n"

        elsif $c == 5
        @val1%=@val2
        print "Modulus is #{@val1}\n"

        else
             "Please Enter a Valid Choice :"
        end
    end

    def logicalAnd
        if @val1>@val2 && @val1>@val3 
            print "#{@val1} is greater "
        elsif @val2>@val1 && @val2>@val3 
            print "#{@val2} is greater "
        elsif @val3>@val1 && @val3>@val2
            print "#{@val3} is greater "
        else
            print "All Are Equal "  
        end
    end 

    def logicalOr
         a = 10
         b = 10
         c = 20
         print "a is #{a}\n"
         print "b is #{b}\n"
         print "c is #{c}\n"
         
         if c>a || c>b   
            print "c is greater\n"
            print "If Both Conditions Are False Then Result is False OtherWise True"     
         end
    end

    def logicalNot
       z = true 
       print "Given value is #{true} \n"
       print "Negation of given value is #{!z}"       
   end

   def comparisonOperators
       if $c == 1
          if @val1>@val2
              print "#{@val1} is greater "
          else
              print "#{@val2} is greater"
          end
       elsif $c == 2
              if @val1<@val2 
                     print "#{@val1} is lesser "
              else
                     print "#{@val2} is lesser "
              end
       elsif $c == 3
              if @val1>=@val2
                     print "#{@val1} is greater or equal "
                 else
                     print "#{@val2} is greater or equal"
              end
       elsif $c == 4
              if @val1<=@val2 
                     print "#{@val1} is lesser or equal "
              else
                     print "#{@val2} is lesser or equal "
              end
       elsif $c == 5               
              if @val1!=@val2 
                     print "Both are not equal "
              else
                     print "Both are equal "
              end
       elsif $c == 6 
              if @val1<=>@val2 
                     print "Both are equal "
              else
                     print "Both are equal not "
              end
       elsif $c == 7 
              if @val1===@val2 
                     print "Both are equal "
              else
                     print "Both are not equal "
              end
       elsif $c == 8 
              if @val1.eql?@val2 
                     print "Both are  equal "
              else
                     print "Both are not equal "
              end 
       else  
              if @val1.equal?(@val2) 
                     print "Both are equal "
              else
                     print "Both are not equal "
              end
        end
    end 
    
    def ternaryOperator
      @val1>@val2 ?  true :  false
    end 

     def bitwiseOperators
         if $c == 1
             puts puts "BITWISE AND :#{@val1&@val2}"
         elsif $c == 2
              puts "BITWISE OR :#{@val1|@val2}"
         elsif $c == 3
              puts "BITWISE XOR :#{@val1^@val2}"
         elsif $c == 4
              puts "BITWISE ONCE COMPLIMENT :#{~@val4}"
         elsif $c == 5
              puts "BITWISE LEFT SHIFT :#{@val4<<2}"
         else
              puts "BITWISE RIGHT SHIFT :#{@val4>>2}"
         end
       end
end

obj = OperatorsExample.new

puts "1. Arithmatic Operators "
puts "2. Assignment Operators "
puts "3. Logical Operators "
puts "4. Comparison Operators "
puts "5. Bitwise Operators "
puts "6. Ternary Operators"

print "Enter Your Choice : "
ch = gets.chomp.to_i 
puts

case ch 

when 1 
        puts "1. Addition (+) "
        puts "2. Subtraction (-) "
        puts "3. Division (/) "
        puts "4. Multiplication (*) "
        puts "5. Modulus (%) "

        print "Enter Your Operation Choice :"
        $c = gets.chomp.to_i
        puts 
        case $c 
         when 1
              obj.accept
              obj.arithmaticOperators
         when 2
                obj.accept
                obj.arithmaticOperators
         when 3
                obj.accept
                obj.arithmaticOperators
         when 4   
                obj.accept
                obj.arithmaticOperators
         when 5
                obj.accept
                obj.arithmaticOperators
         else
            print "Please Enter A Valid Choice :"
         end
              

when 2
        puts "1. Addition AND Assignment(+=) "
        puts "2. Subtraction AND Assignment (-=) "
        puts "3. Division AND Assignment(/=) "
        puts "4. Multiplication AND Assignment(*=) "
        puts "5. Modulus AND Assignment(%=) "

        print "Enter Your Operation Choice :"
        $c = gets.chomp.to_i
        puts
        case $c 
        when 1
             obj.accept
             obj.assignmentOperators
        when 2
               obj.accept
               obj.assignmentOperators
        when 3
               obj.accept
               obj.assignmentOperators
        when 4   
               obj.accept
               obj.assignmentOperators
        when 5
               obj.accept
               obj.assignmentOperators
        else
               print "Please Enter A Valid Choice :"       
        end
when 3
    puts "1. Logical AND (&&) "
    puts "2. Logical OR (||) "
    puts "3. Logical NOT (!) "
    
    print "Enter Your Operation Choice :"
    $c = gets.chomp.to_i
    puts
   
    case $c
    
     when 1 
            obj.accept
            obj.accept1
            obj.logicalAnd 
            
     when 2 
            obj.logicalOr

     when 3
            obj.logicalNot
     else
            print "Please Enter valid choice"
     end
when 4
        puts "1. Greater (>) "
        puts "2. Less (<) "
        puts "3. Greater & Equal (>=) "
        puts "4. Less & Equal (<=) "
        puts "5. Not Equal (!=) "
        puts "6. Combined Comparison (<=>) "
        puts "7. === "
        puts "8. .eql "
        puts "9. equal?()"
                
        print "Enter Your Operation Choice :"
              $c = gets.chomp.to_i
              puts
              
    case $c
       
       when 1  
               obj.accept
               obj.comparisonOperators

       when 2  
              obj.accept
              obj.comparisonOperators
           
       when 3  
              obj.accept
              obj.comparisonOperators       
                     
       when 4  
              obj.accept
              obj.comparisonOperators
             
       when 5  
              obj.accept
              obj.comparisonOperators
           
       when 6  
              obj.accept
              obj.comparisonOperators
          
       when 7  
              obj.accept
              obj.comparisonOperators
              
       when 8  
              obj.accept
              obj.comparisonOperators
              
       when 9  
              obj.accept
              obj.comparisonOperators
              
       when 10  
              obj.accept
              obj.comparisonOperators
       else
              print "Please Enter valid choice"
       end
when 5
       puts "1. Bitwise AND (&) "
       puts "2. Bitwise OR (||) "
       puts "3. Bitwise XOR (^) "
       puts "4. Bitwise ONCE COMPLIMENT (~) "
       puts "5. Bitwise LEFT SHIFT (<<) "
       puts "6. Bitwise RIGHT SHIFT (>>) "
       
       print "Enter Your Operation Choice :"
              $c = gets.chomp.to_i
              puts

       case $c 
       when 1 
              obj.accept
              obj.bitwiseOperators 
       when 2 
              obj.accept
              obj.bitwiseOperators 
       when 3 
              obj.accept
              obj.bitwiseOperators 
       when 4 
              obj.accept2
              obj.bitwiseOperators 
       when 5 
              obj.accept2
              obj.bitwiseOperators 
       when 6 
              obj.accept2
              obj.bitwiseOperators 
       else
              print "Please Enter valid choice"  
       end                 
when 6 
       obj.accept
       obj.ternaryOperator
         
else
             print "Please Enter valid choice"
end


