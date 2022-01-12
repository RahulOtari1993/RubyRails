
#    File.open("abc.txt" , "r") do |file|
     file = File.open("abc.txt" , "r")
#    puts file.read() #to read all file data
#    puts file.read().include? "Rahul"  #gives true or false
#    puts file.readline() #reads first line from file
#    puts file.readline() #reads Second line from file
#    puts file.readchar() #reads first char from file
#    puts file.readchar() #reads Second char from file
#    puts file.readlines() #to read all lines from file
#    puts file.readlines()[2] #gives array which is present on row index 2

     for line in file.readlines()
         puts line     
     end
     file.close()
