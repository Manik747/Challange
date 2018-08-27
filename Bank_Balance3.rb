#user name function 
users = { 
    "leman" => File.open("leman.txt"),
    "legirl" => {"password" => "456def", "balance" => 0}
}
count=0
puts "welcome to the banking app, please tell me your username"
username=gets.chomp
until users.has_key?(username) or count==2
    puts "user not recognised try again"
    username=gets.chomp
    count +=1
end

if  !users.has_key?(username)
    puts "no user recognised program closing"
    return
end
if
#password function
expected_password = users[username]["password"]
puts "what is you password?"
input_password = gets.chomp
application_runtime= true
count=0
while input_password != expected_password and count < 2
    puts "input invalid, try again"
    count +=1
    input_password = gets.chomp
end
if input_password != expected_password 
    puts "restart app-incorrect password"
    return 
end
system "clear"

#main menu    
balance = users[username]["balance"]

while application_runtime

    puts "Welcome what would you like to do? (options:Deposit; Withdraw; Balance; Quit)"
    b = ["random","balance","deposit","quit","withdraw"]
    options = gets.chomp
    until options == b[1] or b[2] or b[3]
        puts "input invalid"
        options = gets.chomp
    end

    # balance function
    if options == b[1]
        puts "Your balance is #{balance}"
    elsif options == b[2]
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
    elsif options == b[3]
        #quit functions
        File.write("balance.txt", balance)
        application_runtime=false
        puts "good bye"
    elsif options == b[4]
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

    File.write("balance.txt", balance)
    end
end
end