=begin
Hiding information is a major part of programming: protecting passwords, 
establishing secure connections, and securing programs against tampering 
all rely on controlling access to information.

While we won't be able to really dig into information hiding until after 
we cover hashes in a later course, we can write a simple program to change 
a user's input with the tools we have now: arrays and iterators.
=end

puts "Enter a phrase to be redacted: "
text = gets.chomp
puts "Enter words to redact, seperated by ',' "
redacts = gets.chomp
words = text.split (" ")
redacts.gsub! ' ', ''
redact = redacts.split (",")

words.each do |word|
  redact.each do |red|
    if word.downcase == red.downcase
      print "REDACTED "
    else print word + " "
    end
  end
end