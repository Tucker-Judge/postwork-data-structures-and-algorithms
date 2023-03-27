function selectionSortRecursive(arr) {
  if (arr.length == 0){
    return []
  }
  // minimum
  const min = Math.min(arr)
  // idx
  const idx = arr.indexOf(min)
  // delete
  arr.splice(idx, 1)

  // initialize stack
  const result = selectionSortRecursive(arr)
  // populate array from bottom of stack up
  result.unshift(min)
  // return result
  return result
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSortRecursive([3, -1, 5, 2]));

  console.log("");
}

module.exports = selectionSortRecursive;

// Please add your pseudocode to this file
// And a written explanation of your solution
