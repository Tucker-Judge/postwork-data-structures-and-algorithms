def selection_sort(arr)
  # new arrat
  sorted = []
  # length
  length = arr.length
  # iterate
  length.times do 
    # lowest number in array
    min = arr.min
    # append to sorted
    sorted << min
    # delete in prev array
    arr.delete_at(arr.index[min])
  end
  # implicit return
  sorted
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }
end

# Please add your pseudocode to this file
# And a written explanation of your solution
