#Array Predefiend Methods

a1 = [8,12,7,19,13]

print a1.size  #Size of array i.e 5
puts
 print a1.length  #length of array i.e 5
 puts
 print a1.at(2)  #Access element at a particular index i.e 7
 puts
 print a1.first #gives first element of array i.e 8
 puts
 print a1.last #gives last element of array i.e 13
 puts
 print a1.take(3)  #returns the first n elements of an array [8, 12, 7]
 puts
 print a1.push(10)  #adds value to the end of array[8, 12, 7, 19, 13, 10]
 puts
 print a1 << 20 #adds value to the end of array [8, 12, 7, 19, 13, 10, 20]
 puts
 print a1.unshift(17) #adds value at the start of array [17, 8, 12, 7, 19, 13, 10, 20]
 puts
 print a1.insert(3,15)  #adds at the specific location [17, 8, 12, 15, 7, 19, 13, 10, 20]
 puts
 print a1.drop(2)   #drops first 2(passed object value) elements of array [12, 15, 7, 19, 13, 10, 20]
 puts
 print a1.pop  #removes from the end (20 is removed)
 puts
 print a1.shift   # removes from the start (17 is removed)
 puts
 print a1.delete(10)  #removes specific value(passed object value)(10 is removed)
 puts
 print a1.uniq #removes any dublicate value [8, 12, 15, 7, 19, 13]
 puts