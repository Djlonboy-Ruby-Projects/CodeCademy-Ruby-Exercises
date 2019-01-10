=begin
Keeping track of all the parts of our digital lives is a pain. 
Now that you know how to write Ruby, however, you can make things 
easy for yourself! Let's start by creating a program that will 
keep track of our movie ratings.

It'll do one of four things: add a new movie to a hash, update 
the rating for an existing movie, display the movies and ratings 
that are already in the hash, or delete a movie from the hash. 
If it doesn't receive one of those four commands, the program will 
output some kind of error message.
=end


movies = {
  The_Matrix: 5
  }
puts "Please enter a choice:"
puts "add, update, display, delete"
choice = gets.chomp
case choice
  when "add" 
  	puts "Please enter a movie title:"
  	title = gets.chomp
  	puts "Please enter a rating"
  	rating = gets.chomp
  	if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
    else
      puts "movie already in database"
    end
  	puts "Movie added"
  when "update" 
  puts "Please enter a movie title:"
  title = gets.chomp
  if movies[title.to_sym] == nil
    puts "movie not in database"
  else
    puts "Please enter a new rating"
    rating = gets.chomp  
    movies[title.to_sym] = rating.to_i
    puts "Movie Updated!"
  end	
  when "display" 
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete" 
  	puts "Please enter the title to delete:"
  	title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "Title not in database"
    else
      movies.delete(title)
      puts "Movie deleted!"
    end
	else 
  	puts "Error!"
end