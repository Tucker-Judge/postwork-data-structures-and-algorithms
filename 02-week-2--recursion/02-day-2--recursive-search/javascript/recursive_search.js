function recursiveSearch(arr, target) {
  // type your code here
}
function binary_search(arr, target){
  if (arr.length == 0){
    return false
  }
  const mid = Math.floor(arr.length / 2)
  if(arr[mid] == target){
    return true
  }
  else if (arr[mid] < target){
    return binary_search(arr.slice(mid+1), target)
  }
  else {
    return binary_search(arr.slice(0,mid),target)
  }
    
}
if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: true");
  console.log("=>", recursiveSearch([1, 2, 3], 2));

  console.log("");

  console.log("Expecting: false");
  console.log("=>", recursiveSearch([3, 2, 1], 4));
}

module.exports = recursiveSearch;

// Please add your pseudocode to this file
// And a written explanation of your solution
