// // range(4, 9) => range(4, 8) + [9]
// function range(num1, num2) {
//     if (num1 === num2) {
//         return [num1]
//     }

//     let previousArray = range(num1, (num2-1));
//     previousArray.push(num2);
//     return previousArray
// }

// console.log (range(4, 9))

// function sumRec(array){
//     let arr = array;
//     if (arr.length === 0){
//         return 0;
//     }

//     let num = arr[0];
//     arr = arr.slice(1);

//     return (num + sumRec(arr));
// }

// let array = [1,2,3,4];
// console.log(sumRec(array));

// // exp (5) = 5 * exp (4)

// function exponent1(base, exp) {
//     if (exp === 0){
//         return 1 
//     };

//     return (base * exponent1(base, (exp-1)));
// }

// function exponent2(base, exp) {
//     if (exp === 0) {
//         return 1
//     };

//     if (exp === 1){
//         return base;
//     }

//     //even exponent
//     if (exp % 2 === 0){
//         return exponent2(base, (exp/2)) ** 2;
//     } else {
//         return base * (exponent2(base,(exp-1)/2) ** 2 )
//     }

// }

// console.log (exponent1(2, 4))

// console.log (exponent2(2, 5))

// function fibonacci(n) {
//     if (n === 2) {
//        return [1,1];
//     }

//     if (n === 1) {
//         return [1];
//      }

//      let prev = fibonacci(n-1);
//      let lastNum = prev[prev.length-1];
//      let penNum = prev[prev.length-2];
//      let nextNum = lastNum + penNum;
//      prev.push(nextNum);
//      return prev;
// }

// console.log (fibonacci(5))


// function deepDup(array){
//     let arr = [];

//     array.forEach( (el) => {
//         // debugger
//         if(el instanceof Array){
//             arr.push(deepDup(el));
//         } else {
//             arr.push(el);
//         }
//     })

//     return arr;
// }

// const array42 = [1, 2, [1, 2, ["hello", "world"]], 4];

// console.log(deepDup(array42));
// console.log(deepDup(array42[2][2]) === array42[2][2]);

function bsearch(arr, target) {
    if (arr.length === 0){
        return -1
    }
    
    const mid = Math.floor(arr.length/2);
    // console.log(arr.length)
    // console.log(mid)

    if (target < arr[mid]) {
        return bsearch(arr.slice(0,mid), target);
    }
    if (target === arr[mid]) {
        return mid;
    }
    if (target > arr[mid]){
        rightReturn = bsearch(arr.slice(mid+1), target);
        // debugger
        if (rightReturn === -1){
            return -1;
        } else {
            return mid + 1 + rightReturn;
        }
    }
}

console.log (bsearch([1,2,3,4,5,6,7,8], 8))


// mid = arr.length/2
// if target < mid
// return mid if target == arr[mid]
// if target > mid


