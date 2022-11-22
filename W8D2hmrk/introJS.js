const madLib = function(verb, adj, noun) {
    debugger
    console.log(`We shall ${verb} the ${adj} ${noun}`);
}

//madLib('run', 'quickly', 'rabbit')

const isSubstring = function(searchString, subString) {
    if (searchString.includes(subString)) {
        return true;
    } else {
        return false;
    }
}
// isSubstring("time to program", "time")
// isSubstring("Jump for joy", "joys")

const fizzBuzz = (arr) => {
    returnArr = []
    for (let i = 0; i < arr.length; i++){
        if ((arr[i] % 3 === 0 || arr[i] % 5 === 0) && !(arr[i] % 3 === 0 && arr[i] % 5 === 0)) {
            returnArr.push(arr[i])
        }
    }
    return returnArr
}

arr1 = [3,5,10,9,15, 7, 8, 30]
// console.log(fizzBuzz(arr1))

const isPrime = (num) => {
    if (num < 2){
        return false
    }

    for (let i = 2; i < num; i ++){
        if (num % i === 0){
            return false
        }
    }
    return true
}

// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))

// firstNPrimes

// create a prime array
// while the length of the prime array is less than the input number
// check if i is prime, add it to arr if it is, increment i
// return array

const sumOfNPrimes = (n) => {
    let prime_arr = []
    let i = 0
    if (n === 0) {
        return 0
    }
    while (prime_arr.length < n ){
        if (isPrime(i)){
            prime_arr.push(i)
        }
       i++ 
    }
    return prime_arr.reduce((acc, ele) => acc + ele)
}

// console.log(sumOfNPrimes(4))
// console.log(sumOfNPrimes(0))
// console.log(sumOfNPrimes(1))