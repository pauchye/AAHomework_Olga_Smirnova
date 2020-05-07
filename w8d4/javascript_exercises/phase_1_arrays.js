Array.prototype.uniq = function() {
    const newArray = [];
    this.forEach( (el) => {  // function func(el) {} ask TA
        if (!newArray.includes(el)) {
            newArray.push(el)
        }
    } );
    return newArray;
}

let arr = [1 ,2, 2, 3, 1]
// console.log (arr.uniq())

Array.prototype.twoSum = function() {
   const arrayNums = [];

   for(let i=0; i < this.length; i++){
       for(let j=(i+1); j < this.length; j++){
           if (this[i] + this[j] === 0){
            arrayNums.push([i,j]);
           }
       }
   } // ?

   return arrayNums;
}

let array1 = [3,-3,5,6,-6];
// console.log(array1.twoSum());
// [['a','b','e'],['c','d','f']] => [[a,c],[b,d],[e,f]]
Array.prototype.transpose = function() {
    const transposed = [];

    for(let i=0; i < this[0].length; i++ ){
        let subArr = [];
        this.forEach ( (innerArray) => {
            subArr.push(innerArray[i])
        }
        )
        transposed.push(subArr)
    };
    return transposed;

}

let arr2 = [['a','b','e'],['c','d','f']]
// console.log (arr2.transpose())

