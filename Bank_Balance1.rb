

puts "welcome to the banking app"
#password function
puts "what is you password?"
input = gets.chomp
password= "password"
application_runtime= true

until input == password
    puts "input invalid, try again"
    input = gets.chomp
end

#main menu    
balance = 0

while application_runtime

    puts "Welcome what would you like to do? (options:Deposit; Balance; Quit)"
    b1 = "balance"
    b2 = "deposit"
    b3 = "quit"
    b4 = "withdraw"
    options = gets.chomp
    until options == b1 or b2 or b3
        puts "input invalid"
        options = gets.chomp
    end

    # balance function
    if options == b1
        puts "Your balance is #{balance}"
    elsif options == b2
        # desposit function
        puts "your balance is #{balance}"
        puts "how much would you like to deposit"
        input_deposit = gets.chomp.to_f
        while input_deposit <= -1
            puts "no deposit made"
            input_deposit = gets.chomp.to_f
        end
        balance = balance + input_deposit
        puts "your balance is #{balance}"   
    elsif options == b3
        #quit functions
        application_runtime=false
        puts "good bye"
    elsif options == b4
        #withdraw function
        puts "your balance is #{balance}"
        puts "how much would you like to withdraw"
        input_withdrawal = gets.chomp.to_f 
        while input_withdrawal >= balance 
            puts "insufficient balance for withdrawal"
            input_withdrawal = gets.chomp.to_f 
        end
        balance = balance - input_withdrawal
        puts "your balance is #{balance}"
    end
end

