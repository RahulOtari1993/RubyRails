class CandyCrush
    $primary_array = [[0,5,5,5,4,5],[2,2,4,2,4,4],[3,2,3,2,0,0],[0,1,0,2,2,1],[2,2,0,2,1,2],[3,1,2,0,1,3]]
    $secondary_array
    @row
    @column
    $rowsize
    $columnsize
    $count=0
    $size

            def arraySize 
                print "Enter Row Size\t:"
                $rowsize = gets.chomp.to_i 
                print "Enter Column Size\t:"
                $columnsize = gets.chomp.to_i
                $size = $rowsize * $columnsize
            end

            def displayArray(r,c)
                puts
                for row in 0...r
                    for column in 0...c
                        print "#{$primary_array[row][column]}\t"
                    end
                    puts 
                end 
            end
    
            def displayArray1(r,c)
                puts
                for row in 0...r
                    for column in 0...c
                        print "#{$secondary_array[row][column]}\t"
                    end
                    puts 
                end 
            end 
    
            def insertValue

                print "Enter value between numbers (1-5) to insert :"
                val = gets.chomp.to_i 

                print "Enter Row Index :"
                @row = gets.chomp.to_i
                print "Enter Column Index :"
                @column = gets.chomp.to_i
                    
                if $primary_array[@row][@column] == 0
                    $primary_array[@row][@column] = val
                else
                    print "Value Already Exists i.e #{$primary_array[@row][@column]} please give valid row and column\n"
                end
            end

            def deleteColumns
                    
                    if $primary_array[@row][@column]==$primary_array[@row][@column-1] && $primary_array[@row][@column]==$primary_array[@row][@column+1] &&  $primary_array[@row][@column]==$primary_array[@row][@column+2]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column-1] = 0
                        $primary_array[@row][@column+1] = 0
                        $primary_array[@row][@column+2] = 0   
                    elsif $primary_array[@row][@column]==$primary_array[@row][@column-1] && $primary_array[@row][@column]==$primary_array[@row][@column+1]  
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column-1] = 0
                        $primary_array[@row][@column+1] = 0
                    end                            
                    if $primary_array[@row][@column]==$primary_array[@row][@column-1] && $primary_array[@row][@column]==$primary_array[@row][@column-2]  && $primary_array[@row][@column]==$primary_array[@row][@column-3]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column-1] = 0
                        $primary_array[@row][@column-2] = 0
                        $primary_array[@row][@column-3] = 0                   
                    elsif $primary_array[@row][@column]==$primary_array[@row][@column-1] && $primary_array[@row][@column]==$primary_array[@row][@column-2]   
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column-1] = 0
                        $primary_array[@row][@column-2] = 0
                    end
                    if $primary_array[@row][@column]==$primary_array[@row][@column+1] && $primary_array[@row][@column]==$primary_array[@row][@column+2] && $primary_array[@row][@column]==$primary_array[@row][@column+3]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column+1] = 0
                        $primary_array[@row][@column+2] = 0
                        $primary_array[@row][@column+3] = 0
                    elsif $primary_array[@row][@column]==$primary_array[@row][@column+1] && $primary_array[@row][@column]==$primary_array[@row][@column+2]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row][@column+1] = 0
                        $primary_array[@row][@column+2] = 0                      
                    end                    
                    $secondary_array = $primary_array 
            end

            def deleteRows
                    
                    if $primary_array[@row][@column]==$primary_array[@row-1][@column] && $primary_array[@row][@column]==$primary_array[@row+1][@column] &&  $primary_array[@row][@column]==$primary_array[@row+2][@column]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row-1][@column] = 0
                        $primary_array[@row+1][@column] = 0
                        $primary_array[@row+2][@column] = 0  
                    elsif $primary_array[@row][@column]==$primary_array[@row-1][@column] && $primary_array[@row][@column]==$primary_array[@row+1][@column]  
                        $primary_array[@row][@column] = 0
                        $primary_array[@row-1][@column] = 0
                        $primary_array[@row+1][@column] = 0
                    end                            
                    if $primary_array[@row][@column]==$primary_array[@row-1][@column] && $primary_array[@row][@column]==$primary_array[@row-2][@column]  && $primary_array[@row][@column]==$primary_array[@row-3][@column]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row-1][@column] = 0
                        $primary_array[@row-2][@column] = 0
                        $primary_array[@row-3][@column] = 0                   
                    elsif $primary_array[@row][@column]==$primary_array[@row-1][@column] && $primary_array[@row][@column]==$primary_array[@row-2][@column]   
                        $primary_array[@row][@column] = 0
                        $primary_array[@row-1][@column] = 0
                        $primary_array[@row-2][@column] = 0
                    end
                    if $primary_array[@row][@column]==$primary_array[@row+1][@column] && $primary_array[@row][@column]==$primary_array[@row+2][@column] && $primary_array[@row][@column]==$primary_array[@row+3][@column]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row+1][@column] = 0
                        $primary_array[@row+2][@column] = 0
                        $primary_array[@row+3][@column] = 0
                    elsif $primary_array[@row][@column]==$primary_array[@row+1][@column] && $primary_array[@row][@column]==$primary_array[@row+2][@column]
                        $primary_array[@row][@column] = 0
                        $primary_array[@row+1][@column] = 0
                        $primary_array[@row+2][@column] = 0                      
                    end                    
                    $secondary_array = $primary_array 
            end 

            def exitArray
                    for row in 0...$rowsize
                            for column in 0...$columnsize
                                    if $secondary_array[row][column]==0
                                        $count=$count+1
                                    end
                            end
                    end 

                    if $count==$size
                        exit
                    end
            end
    
    end


    
    candy = CandyCrush.new 
    candy.arraySize
    candy.displayArray($rowsize,$columnsize)
    
    while 1
        candy.insertValue
        candy.deleteColumns
        candy.deleteRows
        candy.displayArray1($rowsize,$columnsize)
        candy.exitArray
    end
    
