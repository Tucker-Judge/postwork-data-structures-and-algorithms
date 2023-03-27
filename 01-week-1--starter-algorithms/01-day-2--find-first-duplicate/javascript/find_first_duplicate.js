function findFirstDuplicate(arr) {
// this adds a constant lookup for each value that will slow us down
// const set = new Set 

// finding an objects properties is faster than searching for a value in a set
  const uniques = {}
  // for each value in arr
  for (const value of arr)
    // if value is repeated
    if (uniques[value]){

      // retur
      return value
    }
    
    // set value to true
    uniques[value] = true
 
  // no duplicates found
  return -1
}

function firstTest(str){
  // array optimized for checking unique values
  const uniques = new Set()
  // each value of array
  for (value of uniques){
    // if value
    if (uniques.has(value)){
    // return
      return value
    }
    // add to array
    uniques.add(value)
  }
  // no duplicates return
  return -1
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 3");
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]));

  console.log("");

  console.log("Expecting: -1");
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]));
}

module.exports = findFirstDuplicate;

// Please add your pseudocode to this file
// And a written explanation of your solution
