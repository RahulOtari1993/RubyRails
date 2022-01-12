puts "enter array size"
size = gets.chomp.to_i

a = Array.new(size)

puts "Enter #{size} elements"

for i in 0..size-1
    a[i] = gets.chomp.to_i
end

for i in 0..size-1
    print a[i]
    print "\t"
end

i=0
j=1
t=0
 for i in 0..size-1
     for j in 0..size-1
       if a[i] < a[j] 
          t = a[i]
          a[i] = a[j]
          a[j] = t
       end
     end
 end

 puts "Sorted array is :"

 for i in 0..size-1
     print a[i]
     print "\t"
 end



