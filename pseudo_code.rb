# Input -- String --> Look at the data type
# Output -- String --> Look at the data type
#
#
# Introspection --- To know yor abilities and methods available
#
# Processing

# Get each individual character
# Store it in a variable which is of the data type
# Then reepeat the process

def reverse(String)

	reverse_string = ""

	i = string.length-1

	while i >= 0
		reverse_string = original_string[i] + reverse_string
		i -= 1	
	end

	return reverse_string

end

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts('reverse("ab") == "ba": ' + (reverse("ab") == "ba").to_s)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)