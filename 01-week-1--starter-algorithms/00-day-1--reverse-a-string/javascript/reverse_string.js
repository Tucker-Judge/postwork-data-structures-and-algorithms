function reverseString(str) {
let string = ""
//  iterate over the string given in reverse
for (let i = str.length - 1; i > -1; i-- )
  // add each character to new string
string += str[i]
// return string
return string



// alternatively we can do

// split the string into an array
// reverse
// join the array back to a string
// return str.split("").reverse().join("")
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'ih'");
  console.log("=>", reverseString("hi"));
  
  console.log("Expecting: 'hug'")
  console.log("=>", reverseString("guh"));

  console.log("Expecting: 'ybabtac'");
  console.log("=>", reverseString("catbaby"));
}

module.exports = reverseString;

// Please add your pseudocode to this file
// And a written explanation of your solution

  // intialize an empty string
  let string = ""
  // start loop by the length of the string 
  // iterating backwards
  // length starting form zero
  // i greater than -1
  
for (let i = str.length-1; i < -1; i--) {
  string += str[i]
}
// return string
