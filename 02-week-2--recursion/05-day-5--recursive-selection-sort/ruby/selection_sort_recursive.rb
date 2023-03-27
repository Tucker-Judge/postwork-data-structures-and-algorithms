def selection_sort_recursive(arr)
  # find the lowest and put that in first position
  
  # minimum
  min = arr.min
  # index of minimum
  idx = arr.index(min)
  # deleting that index
  arr.delete_at(idx)
  # run this recursively
  result = selection_sort_recursive(arr)
  # return ^ to front of array
  result.unshift(min)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort_recursive([3, -1, 5, 2])

  puts

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
