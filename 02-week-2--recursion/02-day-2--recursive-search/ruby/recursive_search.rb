def recursive_search(arr, target)
  i = 0 || i + 1
   return nil if i >= arr.length

  return arr[i] if arr[i]=target

 recursive_search(arr, target)

end
# first try

def recursively_search(arr, target)
  return false if arr.empty?
  return false if !arr.include?(target)
  recursively_search(arr[0..-1], target)
end
def binary_search(arr, target)
  return false if arr.empty?

  mid = arr.length / 2
  if arr[mid] == target
    return true
  elsif arr[mid] > target
    binary_search(arr[0..mid], target)
  else
    binary_search(arr[(mid+1)..-1], target)
  end
end
puts binary_search([1,2,3,4,5,6,7],7)
if __FILE__ == $PROGRAM_NAME
  puts "Expecting: true"
  puts "=>", recursive_search([1, 2, 3], 2)

  puts

  puts "Expecting: false"
  puts "=>", recursive_search([3, 2, 1], 4)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
