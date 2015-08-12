# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  # a = 0
  # b = 0
  # counter1 = 0
  # counter2 = 0

  # while a < string.length
  #   b = 0
  #   while b < string.length
  #     if string[a] == string[b]
  #       counter1 += 1
  #     end
  #     b += 1
  #   end
  #   if counter1 > counter2
  #     counter2 = counter1 
  #     counter1 = 0
  #     var = [string[a], counter2] 
  #   end
  #   a += 1
  # end
  # return var

  letter, count  =  ('a'..'z')
  .map { |letter| [letter,string.count(letter)]  }
  .max_by(&:last)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(
'most_common_letter("abca") == ["a", 2]: ' +
(most_common_letter('abca') == ['a', 2]).to_s
)
puts(
'most_common_letter("abbab") == ["b", 3]: ' +
(most_common_letter('abbab') == ['b', 3]).to_s
)