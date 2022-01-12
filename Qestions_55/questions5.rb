class Assignment

            def conditionalOperation
                print "Enter first number :"
                n1 = gets.chomp.to_i 
                print "Enter second number :"
                n2 = gets.chomp.to_i
                ans1 = n1%5
                ans2 = n2%5
                        if n1==n2 
                            return 0
                        elsif ans1==ans2
                                if n1>n2
                                    return n2
                                else
                                    return n1 
                                end
                        elsif n1>n2
                                return n1
                        else 
                                return n2 
                    end           
            end

            def sumNumbers1
                print "Enter first number :"
                n1 = gets.chomp.to_i 
                print "Enter second number :"
                n2 = gets.chomp.to_i
                print "Enter third number :"
                n3 = gets.chomp.to_i 

                if (n1==17 || n2==17 || n3 == 17)
                    return 0
                elsif
                    ans = n1+n2+n3 
                    return ans 
                end
                
            end

            def sumNumbers2
                print "Enter first number :"
                n1 = gets.chomp.to_i 
                print "Enter second number :"
                n2 = gets.chomp.to_i
                print "Enter third number :"
                n3 = gets.chomp.to_i 

                    if (n1==n2 || n1==n3 || n2==n3)
                        return 0
                    elsif
                        ans = n1+n2+n3 
                        return ans 
                    end
                
            end

            def digitCheck
                    print "Enter first number in range 10..99 :"
                    n1 = gets.chomp.to_i 
                    print "Enter second number in range 10..99 :"
                    n2 = gets.chomp.to_i
                    digitn1 = n1%10
                    digitn2 = n2%10
                    x = n1/10
                    y = n2/10
                    return(digitn1==y || digitn2==x || x==y || digitn1==digitn2)
            end 

            def arrayCountNumber
                array = [1,5,2,3,7,5,3,0]
                count=0
                for i in 0..array.length
                    if array[i]==5
                    count=count+1
                   end   
                end
               puts count
            end 

            def arrayOperation(array) 
                count=0
                    for i in 0..array.length
                       if array[i]==7
                        count=count+1
                      end
                    end

                     if count>=1
                         return 1
                    else
                         return 0
                    end 

            end

            def sequence(array)
            count=0
                    for i in 0..array.length
                        if array[i..i+2]==[10,20,30]
                          return true
                        else
                            return false
                        end
                     end
            end 

            def sameDigit 
                    print "Enter first number in range 10..99 :"
                    n1 = gets.chomp.to_i 
                    print "Enter second number in range 10..99 :"
                    n2 = gets.chomp.to_i

                    x = n1%10
                    y = n2%10

                    return (x==y)
            end

            def checkValue
                    print "Enter first number  :"
                    n1 = gets.chomp.to_i 
                    print "Enter second number  :"
                    n2 = gets.chomp.to_i

                        if n1==11 || n2==11 || n1-n2==11 || n1+n2==11
                           return true
                        else
                         return false
                        end

            end 

            def checkNumber1
                puts "Enter tnumber:"
                num1=gets.chomp.to_i
                return num1%10<=2 || num1%10>=8
            end 

            def pattern
                puts "Enter a string:"
                str=gets.chomp
                str1 = ""
                str.split("").each_with_index do |char,index|
                str1+=char unless  index%2==1
                end
                return str1 
            end

            def checkNumber
                 puts "Enter tnumber:"
                 num1=gets.chomp.to_i
                 return num1%10<=2 || num1%10>=8
            end
end


qstn = Assignment.new 
puts qstn.conditionalOperation 
puts qstn.sumNumbers1
puts qstn.sumNumbers2 
puts qstn.digitCheck 
qstn.arrayCountNumber
puts qstn.arrayOperation([1,6,7,8,3,2])
puts qstn.sequence([10,20,30,40])
puts qstn.sameDigit
puts qstn.checkValue 
puts qstn.checkNumber1
 puts qstn.pattern 
puts qstn.checkNumber