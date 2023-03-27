function selectionSort(arr){
  for (let i = 0; i < arr.length; i++) {
    let minIdx = i
    for (let j = 0; j < arr.length; j++) {
      if (arr[j] > arr[minIdx]){
        minIdx = j
      }
  }
  if (minIdx !== i) {
    [arr[i], arr[minIdx]] = [arr[minIdx], arr[i]]
  }
}
return arr
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, 2]));

  console.log("");

  // BENCHMARK HERE, and print the average runtime
  const longInput = [];

  for (let i = 0; i < 100; ++i) {
    longInput.push(Math.random());
  }
}

module.exports = selectionSort;

// Please add your pseudocode to this file
// And a written explanation of your solution
