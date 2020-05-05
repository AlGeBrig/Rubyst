hasher = Hash.new
hasher = {one: 0, second: 0}


puts "First number"
while hasher[:one] == 0 do
    hasher[:one] = gets.to_i
    if hasher[:one] == "".to_i || hasher[:one] !~ /d/
        puts "Enter the first number one more time"
    end
end

puts "Second number"
while hasher[:second] == 0 do
    hasher[:second] = gets.to_i
    if hasher[:second] == 0 || hasher[:second] == "".to_i || hasher[:second] !~ /d/
    puts "Enter the second number one more time <0 or >0"
    end
end

p "The result is #{hasher[:one] / hasher[:second]}"
