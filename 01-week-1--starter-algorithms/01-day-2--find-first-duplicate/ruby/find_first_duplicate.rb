require 'set'

def find_first_duplicate(arr)
  # make new set
  uniques = Set.new
  # go through array
  arr.each do |value|
    # return if i is included
    return value if uniques.include?(values)
    # or add to uniques
    uniques.add(value)
  end
  # if nothing return no duplicates
  -1
end

def find_first_duplicate(arr)
  # sidebar
# i use a each method that makes an enumarator object giving added flexibility to
# the data such as amount and complexity

  # make set
  uniques = Set.new
  # value added until duplicate returns as nil
  arr.each {|value| return value if uniques.add?(value).nil}
  -1
end
def find_first_duplicate(arr)
  # intialize object
  uniques = {}

  # loop through arr
  for (value of arr){
    # return value if repeated
    return value if uniques[value]
    # put value in object
    uniques[value] = true
  }
  # no duplicates
  return -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
