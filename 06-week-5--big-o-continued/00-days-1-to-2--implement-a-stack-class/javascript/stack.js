class Stack {
  constructor(limit = 10) {
    this.stack = [];
    // this is an arbitrary value to make testing easier
    // 1,024 would be way too high to test!
    this.limit = limit;
  }

  // add item to top of stack if not full
  // if full throw error
  push(item) {
    if (!this.isFull()){
      this.stack.push(item)
    } else {
      throw new Error("Stack overflow")
    }
  }

  // remove item from top of stack and return it
  pop() {
    return this.stack.pop(item)
  }

  // return item at top of stack without removing it
  peek() {
    return this.stack[this.size() - 1]
  }

  // return true if stack is empty, otherwise false
  isEmpty() {
    return this.size() == 0
  }

  // return true if stack is full, otherwise false
  isFull() {
    return this.stack.size() == this.limit
  }

  // return number of items in stack
  size() {
    return this.stack.length
  }

  // return -1 if item not in stack, otherwise integer representing 
  // how far it is from the top
  search(target) {
    for (let i = -1; i >= -this.size(); --i) {
      if (this.stack[this.size() + i] === target) {
        return Math.abs(i) - 1
      }
    }
    return -1
  }
  // print contents of stack: do not return the stack itself!
  print() {
    console.log(this.stack)
  }
}

if (require.main === module) {
  // add your own tests in here
}

module.exports = Stack;
