# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.
def num_repeats(string)
	repeats = 0

  i = 0

  while i < string.length
    is_repeat = false
    i2 = 0

    while i2 < string.length
      if string[i] != string[i2]
        i2 += 1
        next
      elsif i2 < i
        break
      elsif i2 > i
        is_repeat = true
      end

      i2 += 1
    end

    if is_repeat
      repeats += 1
    end

    i += 1
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)