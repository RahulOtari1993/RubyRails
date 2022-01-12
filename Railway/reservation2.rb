require 'io/console'
class Reservation
    @signupUsername
    @signupPassword1 
    @signupPassword2
    @signupPhone 
    @captcha
    @loginUsername
    @loginPassword
    @loginPhone
    @start 
    @end
    @totalTicket 
    @day 
    @month
    @passangerName
    @passangerAge
    $signupHash
    $loginHash
    $ticketHash

        
       
            def signUp 
                    print "Enter Details For Signup \n"  
                    print "-----------------------------"             
                    print "\nEnter Your Username :"
                    @signupUsername = gets.chomp
                    print "------------------------------"
                    print "\nEnter Your Password :\n"
                    @signupPassword1 = STDIN.noecho(&:gets).chomp
                    print "------------------------------"                    
                    print "\nEnter Your Password Again :\n" 
                    @signupPassword2 = STDIN.noecho(&:gets).chomp
                    print "------------------------------"
                    if @signupPassword1==@signupPassword2
                            print "\nEnter Your Phone Number :"
                            @signupPhone = gets.chomp.to_i 
                            print "------------------------------"                  
                            print "\nProve You Are Not Robot : 150+200 = ? \n"
                            print "------------------------------"
                            print "\nEnter Your Answer :"
                            @captcha = gets.chomp.to_i
                            print "------------------------------"
                            
                                if @captcha==350
                                    print "\nAccount Created Successfuly :"
                                    
                                    $signupHash = {"username" => @signupUsername,"password" => @signupPassword1 ,"phone"=>@signupPhone }
                                    File.open("signupDetails.txt" , "w") do |file|
                                    file.write($signupHash)   
                                    end
                                else
                                    print "\nInvalid Answer : Registration Faild !!\n"
                                    exit 
                                end    
                    else
                        print "\nPassword Does Not Match:\n"
                        exit
                    end                                      
            end

            def login
                        print "\n\nEnter Details For Login \n"             
                        print "\nEnter Your Phone Number:"
                        @loginPhone = gets.chomp.to_i
                        print "------------------------------"
                        print "\nEnter Your Password :\n"
                        @loginPassword = STDIN.noecho(&:gets).chomp
                        print "------------------------------"
                        puts
                        if (@loginPhone==@signupPhone && @loginPassword==@signupPassword2)
                            print "\nLogin Successfully :"
                            $loginHash = {"Username" => @signupUsername,"Phone"=>@loginPhone }
                            File.open("loginDetails.txt" , "w") do |file|
                            file.write($loginHash)   
                            end
                        else
                            print "Username Or Password Does Not Match : Login Faild !!"
                            exit 
                        end 
                    while true 
                        puts 
                        print "\n1. Book A Ticket\n"
                        puts "----------------------------------"
                        print "2. Cancel A Ticket\n"
                        puts "----------------------------------"
                        print "3. Rail Enquiry\n"
                        puts "----------------------------------"
                        print "4. View Ticket\n"
                        puts "----------------------------------"
                        print "5. Exit From The Application\n"
                        puts "----------------------------------"
                        puts 
                        print "Enter Your Choice :"
                        ch = gets.chomp.to_i 
                        case ch 
                                when 1
                                        bookTicket
                                when 2
                                        cancelTicket
                                when 3
                                        print "3. Function Under Development \n"
                                when 4
                                        viewTicket
                                when 5
                                        exit
                        end
                    end   
            end

            def bookTicket
                    file = File.open("railwayDetails.txt" , "r")
                        for line in file.readlines()
                                puts line     
                        end
                        file.close()
                        
                        print "\nEnter The Starting Point From The Above List : "
                        @start = gets.chomp
                        puts"------------------------------------------------------"
                        print "\nEnter The Ending Point From The Above List :"
                        @end = gets.chomp
                        puts"------------------------------------------------------"
                        print "\n Enter The Number Of Tickets You Wants To Book :"
                        @totalTicket = gets.chomp.to_i
                        puts"------------------------------------------------------"
                        print "\n Enter Day Of Journey :"
                        @day = gets.chomp.to_i
                        puts"------------------------------------------------------"
                        print "\n Enter Month Of Journey :"
                        @month = gets.chomp.to_i
                        puts"------------------------------------------------------"
                        print "\n Enter Passanger Name :"
                        @passangerName = gets.chomp 
                        puts"------------------------------------------------------"
                        print "\n Enter Passanger Age :" 
                        @passangerAge = gets.chomp.to_i
                        puts"------------------------------------------------------"

                        $ticketHash = {"Starting_Point" => @start,"Ending_Point"=>@end,"Total_Tickets"=>@totalTicket,"Journey_Day"=>@day,"Journey_Month"=>@month,"passanger_Name"=>@passangerName,"Passanger_age"=>@passangerAge}
                        File.open("TicketCreated.txt" , "w") do |file|
                        file.write($ticketHash)
                        print "\nTicket Registered : \n"
                        end
        
           end  

           def cancelTicket
                    file = File.open("TicketCreated.txt" , "r+")
                    File.delete(file)
                    print "\n\nTicket Cancelled !!\n"    
           end

           def viewTicket
                    puts
                    print "Starting Point : #{@start} \n"
                    print "Ending Point : #{@end} \n"
                    print "Total Tickets : #{@totalTicket} \n"
                    print "Date Of Journey : #{@day} / #{@month} / 2022 \n"
                    print "Passanger Name : #{@passangerName} \n"
                    print "Passanger Age : #{@passangerAge} \n"
            end

end

railway = Reservation.new
railway.signUp
railway.login
   
            


            