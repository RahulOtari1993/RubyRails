class Assignment

        def sumTwo
                print "ENter first number :"
                number1 = gets.chomp.to_i 
                print "Enter second number :"
                number2 = gets.chomp.to_i 
                sum = number1+number2  
                if number1==number2 
                    return sum*sum
                else
                    return sum  
                end
                    

        end 

        def rubyExercises
               for i in 1..9
                puts "Ruby Exercises "
               end 
        end 

        def charInsertFirstLast
            print "Enter String :"
            str = gets.chomp
            puts "given string is : #{str}" 
            temp = str[-1]
            # puts temp
            str.insert(0, temp)
            str[0] = temp
            str[-1] = temp 
            puts str    
        end 

        def temperature
             print "Enter first temperature"
             temp1 = gets.chomp.to_i 
             print "Enter second temperature"
             temp2 = gets.chomp.to_i
             
             if (temp1 < 0 || temp2 > 100) || (temp2 < 0 || temp1 > 100) 
                return true   
             else
                return false 
             end
        end 

        def uptoIterator 
            x = 34
            x.upto 42 do |i|
                puts "#{i}"
            end  
        end

        def evenNumbers
            for i in 1..10
                if i%2==0
                    print "#{i}\t"
                end
            end
        end
       
        def oddNumbers
            for i in 1..10
                if i%2!=0
                    print "#{i}\t"
                end
            end
        end 

        def printArray
            primary_array = ["Ruby", 2.3, Time.now]
            for value in primary_array 
                puts value  
            end
        end

        def hashExample
                marks = Hash["Literature" => 74, "Science" => 89, "Math" => 91] 
                total = 0
                marks.each {|key,value|
                total= total+value
                } 
                puts "Total Marks: "+total.to_s
        end
end

qstn = Assignment.new  
puts qstn.sumTwo  
puts qstn.rubyExercises 
puts qstn.charInsertFirstLast 
puts qstn.temperature
qstn.uptoIterator 
qstn.evenNumbers     
qstn.oddNumbers
qstn.printArray
qstn.hashExample