def line 
    puts"-" * (length=25)
end

def cook_time (mins)
    puts "- Cook for #{mins} minutes"
end
def prep_water
    puts "- Fill saucepan with water"
    puts "- Place saucepan on stove"
    puts "- Bring water to the boil"
end

line
puts "How to cook spaghetti:"
line
prep_water
puts "- Add pasta"
cook_time(9)
line
puts "How to cook rice:"
line
prep_water
puts "- Add rice"
cook_time(15)
