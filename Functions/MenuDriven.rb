class Area

    @radius
    @side
    @length 
    @bredth
    @base 
    @hight
    Pi = 3.14

    def getRadius(r)
       @radius = r 
    end

    def getSide(s)
        @side = s 
    end

    def getLbredth(l,b) 
        @length = l
        @bredth = b
    end 

    def getBhight(b,h)
        @base = b 
        @hight = h
    end     
    
    def areaCircle
        ac = Pi * @radius * @radius 
        puts "Area of circle is #{ac}" 
    end 

    def areaSquare 
        as = @side * @side 
        puts "Area of square is #{as}"
    end 
    
    def areaRectangle
        ar = @length * @bredth
        puts "Area of rectangle is #{ar}"
    end
    
    def areaTriangle
        at = 0.5 * @base * @hight
        puts "Area of triangle is #{at}"
    end
end

puts "1. Circle"
puts "2. Square"
puts "3. Rectangle"
puts "4. Triangle"

puts "Enter Your Choice"
ch = gets.chomp.to_i

obj1  = Area.new 
 
case ch 
   
when 1
        puts "Enter Radius"
        r1 = gets.chomp.to_i
        obj1.getRadius(r1) 
        obj1.areaCircle
when 2 
         puts "Enter side"
         s1 = gets.chomp.to_i
         obj1.getSide(s1)
         obj1.areaSquare()
when 3
         puts "Enter Length"
         l1 = gets.chomp.to_i
         puts "Enter Bredth "
         b1 = gets.chomp.to_i
         obj1.getLbredth(l1,b1)
         obj1.areaRectangle 
when 4 
         
         puts "Enter Base"
         b2 = gets.chomp.to_i
         puts "Enter Hight "
         h1 = gets.chomp.to_i
         obj1.getBhight(b2,h1)
         obj1.areaTriangle
         
         
else
    puts "Enter valid choice"  

end
