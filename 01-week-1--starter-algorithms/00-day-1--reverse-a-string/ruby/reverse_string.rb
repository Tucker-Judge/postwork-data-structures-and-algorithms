# optimized best for any string
def reverse_string(str)
  str.reduce(""){|reverse_string, char| char + reverse_string}
end
def reverse_string(str)
  reversed = ""
  (str.length).times {|i| reversed += str[-i-1]}
  reversed
end
puts reverse_string("Hope you like this")
def reverse_string(str)
  str_bytes = str.bytes
  (str_bytes.length/2).times {|i| str_bytes[i], str_bytes[-i-1] = str_bytes[-i-1], str_bytes[i]}
  str.pack("C*")
end

# optimized best
def reverse_string(str)
  # not expecting anything other than basic english characters
  str_bytes = str.bytes
# replacing the forward and backward indexes with each other
# and array destructuring
  (str_bytes.length/2).times {|i| str_bytes[i], str_bytes[-i - 1] = str_bytes[-i-1], str_bytes[i]}
  # packing the bytes back into a string
  str_bytes.pack("C*")
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts "Expecting: 'avetahw'"
  puts "=>", reverse_string('whateva')

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')


  puts "Expecting: ruœc"
  puts "=>", reverse_string('cœur')
  # French word and should break the most optimized way.
  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

console.log('
solution
in the third version which i would see as the best fit 
for this without asking any more questions
we reduce the string to each individual character
we pass the result of that to char to start
from there we prepend the characters to the string that gets populated
Thank you!
')



