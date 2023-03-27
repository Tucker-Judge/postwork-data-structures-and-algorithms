def fibonacci(num)
  # set array of 2 
  last_two = [0,1]
  # return 0 or 1
  return num if num < 2
# iterate
  (num - 1).times do 
    # sum of two
    sum = last_two[0] + last_two[1]
    # switching places
    last_two = [last_two[1], sum]
  end
  # return last num
  last_two.last
end

def fibonaci(num)
  # return small number
  return num if num < 2

  # set intial values
  prev1, prev2 = 0, 1
  # iterate
  (num - 1).times do
    # move down and put sum up
    prev1, prev2 = prev2, prev2 + prev1
  end
  prev2
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

solution explanation

# we return the early numbers of the fibbonacci
# then set initial values of the array items 
# that we will be setting our new values into
# iterate num - 1 times
# replace num with new values