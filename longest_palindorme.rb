# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
# "abcd".slice(1, 2) == "bc"
# "abcd".slice(1, 3) == "bcd"
# "abcd".slice(2, 1) == "c"
# "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.
def palindrome?(string)
i = 0
while i < string.length
if string[i] != string[(string.length - 1) - i]
return false
end
i += 1
end
return true
end
def longest_palindrome(string)
	a = 0
  	b1 = ""
  	b2 = nil
  	while a < string.length
    	a2 = 1
    	while a2 <= string.length - a
      		str = string.slice(a,a2)
      		count = str.length
      		if palindrome?(str)
        	if b2 == nil || b2 < count
          b1 = str
          b2 = count
        end
      end
      a2 += 1
    end
    a += 1
  end
  # puts(b1)
  return b1

  # palindromes = []
  # for i in 2..string.length-1
  #   string.chars.each_cons(i).each {|x|palindromes.push(x) if x == x.reverse}
  # end
  # palindromes.map(&:join).max_by(&:length)
  
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(
'longest_palindrome("abcbd") == "bcb": ' +
(longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
'longest_palindrome("abba") == "abba": ' +
(longest_palindrome('abba') == 'abba').to_s
)
puts(
'longest_palindrome("abcbdeffe") == "effe": ' +
(longest_palindrome('abcbdeffe') == 'effe').to_s
)