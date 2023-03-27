def find_shortest_string(arr)
  # same as latter
  arr.min_by(&:length)
end

def find_shortest_string(arr)
  
  arr.reduce("") do |shortest, str|
    #shortest contains shortest value
    # str contains current value mapped
    string.length < shortest.length ? str : shortest
  end
end
# je ne crois pas vous peut lire quoi la
# je vous remerci!

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
end

# Please add your pseudocode to this file
# And a written explanation of your solution
