def find_shortest_string(arr)
  # THIS IS THE LONGER WAY OF DOING THE SAME THING ON LINES 13-15
  # shortest = arr[0]

  # arr.each do |string|
  #   if string.length < shortest.length
  #     shortest = string
  #   end
  # end

  # return shortest

  arr.reduce do |shortest, string| 
    # 
    string.length < shortest.length ? string : shortest
  end
end
def find_shortest_string(arr)
  arr.min_by(&:length)
  # &:length short for {|something| string.length}
end
Here are the changes made and the rationale behind them:

We can use the min_by method to find the shortest string in the array. This method returns the element with the minimum value, based on the block passed as an argument. In this case, we are passing the &:length shorthand syntax, which is equivalent to { |string| string.length }.

By using min_by, we can eliminate the need for a loop, an external variable to hold the shortest string, and a conditional statement to check if the current string is shorter than the current shortest string. This makes the code more concise, easier to read, and more efficient.

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  puts

  puts "Expecting: 'cat'"
  puts find_shortest_string(['cat'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  start_time = Time.now

  1000.times do
    find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])
  end

  avg_time = (Time.now - start_time) / 1000.0
  puts avg_time
end

# Please add your pseudocode to this file
####################################################################################
 # store the first string from the array in a variable called shortest
 # 
 # iterate over the array:
 #    if the length of the current string < shortest:
 #        shortest = current string
 # 
 # return shortest
####################################################################################

# And a written explanation of your solution
####################################################################################
 # We can get the first occurrence of the shortest string by storing the first
 # string in the input array in a variable. As we iterate over the array, we 
 # check if the current string is shorter than the shortest string. If it is, 
 # we store the current string as the shortest string. Since we are checking if
 # subsequent strings are shorter than the shortest string, we will always return
 # the first occurrence of the shorest string. If we iterated over a string of
 # equal length to the shortest string, the value stored wouldn't change.
####################################################################################
