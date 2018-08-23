

puts "welcome to the banking app"
#password function
puts "what is you password?"
    input = gets.chomp
    password= "password"
    until input == password
    puts "input invalid, try again"
     input = gets.chomp
       end
    if password == input

     puts "Welcome what would you like to do? (options:Deposit; balance)"
    end
while(
#main menu    
balance = 0

b1 = "balance"
b2 = "deposit"
b3 = "quit"
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
if options == b2
puts "your balance is #{balance}"
puts "how much would you like to deposit"
input_deposit = gets.chomp.to_f
while input_deposit <1
    puts "no deposit made"
input_deposit = gets.chomp.to_f
end
balance = balance + input_deposit
if input_deposit > 1
puts "you're balance is #{balance}"   
end
end
end)

#quit 

