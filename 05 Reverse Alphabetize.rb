=begin
We noticed in the last lesson that .sort! didn't have a built-in way 
of handling sorting in reverse alphabetical order. Now that we know 
how to write our own Ruby methods, we can fix that.
=end

def alphabetize(arr, rev=false)
	if rev==true
    arr.sort!.reverse!
  else
    arr.sort!
  end
end
numbers = [1,4,7,3,2,4,5]
puts alphabetize(numbers)