computer={hardware:{
            cpu:["intel","cache"], 
            motherboard:["BIOS", "components"],
            peripherals:["mouse","keyboard","screen"]},
        software:["windows","word","excel","calculator"]
    }
puts "my computer has #{computer[:software][0]}"
puts "my computer has #{computer[:hardware][:motherboard][0]}"

person = {name: 'john', height:'2m', weight: '70kg'}
puts person
person [:occupation]='web dev'
person [:hobbies]='art'
person.delete(:weight)
puts person
puts person [:height]
person.each do |identifier, value|
    puts "#{identifier} #{value}"
end

customer_index = 
        [{customer: "John", item: "Soup", cost: 8.50},
         {customer: "Sarah", item: "Pasta", cost: 12},
         {customer: "John", item: "Coke", cost: 2.50}]
puts "what customer is paying"
cusname=gets.chomp
cusitems= customer_index.select {|order|order[:customer].upcase==cusname.upcase}

# this line Selects items from customer index where :customer is equal too what the user typed
cus_total=0
#iterates through the selected hashes from the array adding the :cost of each order
#to the customer total-because we only selected arrays with one customer name only their :costs are totaled
cusitems.each{ |order| cus_total += order[:cost]}
puts "#{cusname} owes #{cus_total}"