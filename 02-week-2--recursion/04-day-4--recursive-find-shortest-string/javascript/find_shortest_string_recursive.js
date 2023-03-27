
  function findShortestString(arr){
    if (arr.length == 1) {
      return arr[0]
    }
    const shortest = arr[0].length >= arr[1].length ? arr[1] : arr[0]
    const restOfArray = arr.slice(2)
    return findShortestString([shortest, ...restOfArray])
}
  function findShortestString2(arr){
    if (arr.length = 1){
      return arr[0]
    }
    const result = findShortestString2(arr.slice(1))
    return arr[0].length >= result.length ? result : arr[0]
  }
if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'a'");
  console.log("=>", findShortestStringRecursive(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log("=>", findShortestStringRecursive(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log("=>", findShortestStringRecursive(['flower', 'juniper', 'lily', 'dandelion']));
}

module.exports = findShortestStringRecursive;

// Please add your pseudocode to this file
// And a written explanation of your solution
