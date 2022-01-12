class Person 
    @id 
    @name
    def getData(id,name) 
        @id = id
        @name = name
    end
    def showData
        puts "ID is : #{@id}"
        puts "Name is : #{@name}"
    end
end

puts "Enter Id"
i = gets.chomp.to_i
puts "Enter Name"
n = gets.chomp

pr = Person.new
pr.getData(i,n)
pr.showData


