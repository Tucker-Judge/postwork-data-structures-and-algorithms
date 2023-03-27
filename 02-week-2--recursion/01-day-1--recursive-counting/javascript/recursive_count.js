function recursiveCount(num = 0) {
// print
  console.log(`${num}`)
// loop 
if (num < 10){
  // num + 1 recursively
  recursiveCount(++num)
}
}

if (require.main === module) {
  recursiveCount();
}

module.exports = recursiveCount;

// OPTIONAL
// Please add your pseudocode to this file
// And a written explanation of your solution
