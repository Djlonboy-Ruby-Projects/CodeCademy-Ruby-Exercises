=begin
This project will help you create a small program that will read a user's input and correct his or her capitalization. 
Users can provide an almost infinite range of input, so it makes our lives easier as programmers to make their 
input standard before doing anything with it.
=end

print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!
print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!
print "What city do you live in? "
city = gets.chomp
city.capitalize!
print "And what county is that in? "
state = gets.chomp
state.upcase!
print "Your name is #{first_name} #{last_name} and you live in #{city} #{state}."