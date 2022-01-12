File.open("abc.txt" ,"r+") do |file|
    file.readline()
    file.write("Override") #in abc.txt on second line it will get added
end
