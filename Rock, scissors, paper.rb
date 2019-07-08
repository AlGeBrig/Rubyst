print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else
	puts "Can't understand what you want, sorry..."
	exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]
p computer_choice

if computer_choice == user_choice
	puts "Nobody wins"
  elsif (computer_choice == arr[0] && user_choice == arr[1]) || (computer_choice == arr[2] && user_choice == arr[0]) || (computer_choice == arr[1] && user_choice == arr[2])
  puts "Computer wins"
  elsif (computer_choice == arr[0] && user_choice == arr[2]) || (computer_choice == arr[1] && user_choice == arr[0]) || (computer_choice == arr[2] && user_choice == arr[1])
  puts "User wins"
end
