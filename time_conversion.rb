# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.
def time_conversion(minutes)
	 # hours = 0

  # while minutes >= 60 do
  #   if minutes >=60
  #     hours += 1
  #     minutes -=60
  #   end
  # end


  # new_hour = hours.to_s
  # new_minutes = minutes.to_s

  	min = minutes % 60
  hours = minutes / 60

  if min < 10
  	min = '0'+min.to_s
  end

  	return hours.to_s + ':' + min.to_s

end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.(
puts time_conversion(360)
puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)