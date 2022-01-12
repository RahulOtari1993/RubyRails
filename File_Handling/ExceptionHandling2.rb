
    begin 
    file = File.open("abc.txt" , "r")
    
    rescue StandardError => e  
        puts e.message  
    else  
        puts file.read()
        file.close()
    ensure 
        puts "Example of exception handling "
    end