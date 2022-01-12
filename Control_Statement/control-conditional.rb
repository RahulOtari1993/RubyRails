
  
class ControlConditional
    
     $num
     @a
     @b
     @c
     
     def getData
        print "Enter Number"
        $num = gets.chomp.to_i 
     end

     def getData1(x,y,z)
            @a = x 
            @b = y 
            @c = z  
     end

    def showData
        print "Given Number is #{$num} "
     end

     def factorial
        f = 1
        for i in 1..$num
            f = f*i
        end
        print "Factorial of #{$num} is #{f}"
    end 

    def sumOfDigit
        s = 0
        for i in 1..$num
            s = s + i 
        end
        print "Sum of first #{$num} natural number is #{s}"
    end

    def multiplicationTable
        ans = 1
        for i in 1..10
            ans = i * $num 
            puts ans
        end
    end 
    
    def evenOdd
        print "Enter Range "
        r = gets.chomp.to_i 
        for i in 1..r 
            if i%2 == 0
                print "#{i}\t"
            end
        end
    end

    def isGreater
        if @a>@b && @a>@c  
          print "#{@a} is greater "
        elsif @b>@a && @b>@c 
          print "#{@b} is greater "
        elsif @c>@a && @c>@b
          print "#{@c} is greater "
        else
            print "All are equal" 
        end
    end

    def gradeStudent
        total = @a + @b + @c
        print "Percentage got : #{percent = (total * 100)/300}%"
        puts
  
        if percent>75
            print "Disinction"
        elsif percent>60 && percent<75
            print "First class"
        elsif percent>40 && percent<60
            print "Pass class"
        else
            print "Fail"
        end 
    end

    def fibonacci
        n1 = 0
        n2 = 1
        n3 = 0
        print " #{n1}  #{n2} "
        for i in 2..$num-1
             n3 = n1+n2
             print "  #{n3}  "
             n1 = n2
             n2 = n3
        end
    end 

    def primeNumber
        n = 0
        flag = 0
        m = $num/2

        for i in 2..m
            if $num % i == 0
                print "Number is not prime"
                flag = 1
                break
            end
        end
        if flag == 0
            print "Number is prime "
        end 
    end

    def armstrongNumber
        sum = 0 
        temp = $num
          
        while $num > 0 do
           r = $num%10
           sum=sum+(r*r*r)
           $num = $num/10
        end

        if temp==sum
            print "Armstrong Number"
        else
            print "not a armstrong number"
        end
    end  
    
    def palindromeNumber
        sum = 0 
        temp = $num

        while $num > 0 do
            r = $num%10
            sum=(sum*10)+r
            $num = $num/10
         end

         if temp==sum
            print "Palindrome Number"
        else
            print "not a palindrome number"
        end 
    end 

    def unlessExample1
        print "enter number"
        x = gets.chomp.to_i

        unless x<5
            print "number is greater than 5"
        else
            print "number is less than 5"
        end
    end
    
    def unlessExample2
        print "enter number"
        x = gets.chomp.to_i

        unless x%2 != 0
            print "number is even"
        else
            print "number is odd"
        end
    end

    def unlessExample3
        print "enter number"
        x = gets.chomp.to_i

        for i in 1..x 
            unless i%2 != 0 
                #empty
            else
                print "#{i}\t"
            end
        end
    end

    def unlessExample4
        print "Enter Number"
        x = gets.chomp.to_i
        puts "odd number" unless x%2 == 0
    end

    def breakExample
        x = 1
         while x < 10
            if x==5
                break
            end
            print "#{x}\t"
            x += 1
        end
    end

    def untillExample
        x = 1
        until x > 10
            print "#{10*x} "
            x += 1
        end
    end

    def untilunlesExample
        
        print "enter range "
        range = gets.chomp.to_i
        x = 1

        until x > range
           print "#{x}\t" unless x%2 == 0
           x += 1
           end
    end
        
end

puts "1. Factorial"
puts "2. Sum Of Digit"
puts "3. Multiplication Table"
puts "4. Even Odd"
puts "5. Greater Of 3 Numbers"
puts "6. Fibonacci Series"
puts "7. Prime Number"
puts "8. Grade Of Student"
puts "9. Armstrong Number"
puts "10. Palindrome Number"
puts "11. Unless Example1"
puts "12. Unless Example2"
puts "13. Unless Example3"
puts "14. Unless Example4"
puts "15. break Example"
puts "16. Untill Example"
puts "17. Untilunless Example"
    
     puts "Enter Your Choice"
     ch = gets.chomp.to_i

case ch 
   
when 1
       fact = ControlConditional.new
       fact.getData
       fact.factorial
   
when 2
        sum = ControlConditional.new
        sum.getData
        sum.sumOfDigit

when 3
        table = ControlConditional.new
        table.getData
        table.multiplicationTable    
        
when 4
        iseven = ControlConditional.new
        # iseven.getData
        iseven.evenOdd 
       
when 5  
        great = ControlConditional.new
        print "Enter 3 Values "
        puts
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = gets.chomp.to_i
        great.getData1(a,b,c)
        great.isGreater   
       
when 6
        fib = ControlConditional.new
        fib.getData
        fib.fibonacci
        
when 7 
        prm = ControlConditional.new
        prm.getData
        prm.primeNumber   
        
when 8 
        grd = ControlConditional.new
        print "Enter Marks for 3 subject "
        puts
        c = gets.chomp.to_i
        cpp = gets.chomp.to_i
        java = gets.chomp.to_i
        grd.getData1(c,cpp,java)
        grd.gradeStudent   
        
when 9
        arm = ControlConditional.new
        arm.getData
        arm.armstrongNumber
        
when 10
        pal = ControlConditional.new
        pal.getData
        pal.palindromeNumber

when 11 
         ul = ControlConditional.new
         ul.unlessExample1   
        
when 12 
         ul = ControlConditional.new
         ul.unlessExample2
         
when 13
         ul = ControlConditional.new
         ul.unlessExample3
       
when 14 
         ul = ControlConditional.new
         ul.unlessExample4
         
when 15 
         ul = ControlConditional.new
         ul.breakExample

when 16
         ul = ControlConditional.new
         ul.untillExample  
        
when 17         
         ul = ControlConditional.new
         ul.untilunlesExample 
                
else
    puts "Enter valid choice"  
end
     
     
    