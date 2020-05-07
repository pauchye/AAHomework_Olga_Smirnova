//  function bubbleSort(array) {}
//  let bubbleSort = function(array) {}

Array.prototype.bubbleSort = function() {
    let sorted = false; 
    while (!sorted) {
        sorted = true;

        for (let i = 0; i < (this.length - 1); i++ ) {
            if (this[i+1] < this[i]) {
                [this[i+1], this[i]] = [this[i], this[i+1]];
                sorted = false;
            }
        }
    }
    return this
}
// sorted = false 
// unless sorted 
// sorted = true 
// iteration 
// if i+1 < i 
// swap 
// sorted = false

array = [1,3,2,5,4];

console.log (array.bubbleSort());




String.prototype.subStrings = function(){
    const array = [];

    for (let i = 0; i < this.length; i++){
        for (let j = (i + 1); j <= this.length; j++){
            array.push(this.slice(i,j));
        }
    }

    return array;
}

let str = "hello world";

console.log(str.subStrings());


// u cant access declaration of variable in if statement


// nested iteration thru string
// shovel into array string[i..j] (ruby)