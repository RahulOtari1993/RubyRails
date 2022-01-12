require 'date'
require 'time'

# dt = Date.new  #it will print garbage value

# puts dt

# dt = Time.new
# puts dt 

# dt1 = Time.new
# puts dt.inspect

dt = Time.new(2021,12,28,05,01,35 ,'+05:30')

puts dt.strftime("Year :%Y ,
                 Month : %m,
                 Day : %d,
                 Time : %H:%M:%S %P, 
                 Time Zone : %z,
                 %A")