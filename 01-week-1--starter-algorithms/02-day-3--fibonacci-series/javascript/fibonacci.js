function fibonacci(num) {
// find first occurence
if (num < 2){
  return num
}
// initialize start of fibbonacci
const last_two = [0,1]
// loop over
for(let i = 0; i < num; i++){
  // add together
  const sum = last_two[0] + last_two[1]
  // set [1] to new zero
  // set sum to new [1]
  last_two = [last_two[1], sum]
}
return last_two[1]
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 0");
  console.log("=>", fibonacci(0));

  console.log("");

  console.log("Expecting: 1");
  console.log("=>", fibonacci(2));

  console.log("");

  console.log("Expecting: 55");
  console.log("=>", fibonacci(10));
}


module.exports = fibonacci;

// Please add your pseudocode to this file
// And a written explanation of your solution
