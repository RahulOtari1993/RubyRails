class Car
   # @name 
    def getCarName(nm) 
        @name = nm
    end
    def setCarName 
        puts "Car name is #{@name}"
    end
end

    obj = Car.new 
    obj.getCarName("Altroz") 
    obj.setCarName 