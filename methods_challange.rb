def add (*num)
    puts num.class
    puts num.sum
end
puts add(gets.chomp.split(",").map.to_i{|num|num})