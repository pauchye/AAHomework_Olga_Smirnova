Array.prototype.myEach = function(givenFunction){ 
    for(let i=0; i < this.length; i++){
        givenFunction(this[i]);
    }
}

let array = [1,2,3,4,5,6];

// array.myEach( (el) => { el + 1});

// console.log(array);

Array.prototype.myMap = function(givenFunction){
    const arrayMap = [];
    for(let i=0; i < this.length; i++){
        arrayMap.push(givenFunction(this[i]));
    }
    return arrayMap;
}

// let newArr = array.myMap( el => (el + 2) );

// (el) => (el + 2) 

// function zzz(el) {
//     return el + 2;
// }

// const zzz = function (el) {
//     return el + 2;
// }

Array.prototype.myReduce = function(givenFunction, initialValue){
    let newArray = this;
    if (initialValue === undefined){
        initialValue = this[0]; 
        newArray = this.slice(1);
    }
    let acc = initialValue;
    for (let i = 0; i < newArray.length; i++) {
        acc = givenFunction(newArray[i], acc);
    }

    return acc;
}

let sum = array.myReduce(function(acc, el) {
    return acc + el;
});

// console.log(sum);

Array.prototype.myFilter = function(givenFunction) {
    let newArr = [];
    for (i = 0; i < this.length; i++){
        if (givenFunction(this[i]) === true){
            newArr.push(this[i]);
        }
    }
    return newArr;
}

console.log (array.myFilter( (el) =>  el % 2 === 0 ))