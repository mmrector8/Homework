
const titleize = function(array, callback) {
    newArr = array.map((name)=> { return`Mx ${name} Jingleheimer Schmidt` })
    callback(newArr)
}

const callback = (array) => {
    array.forEach(name => console.log(name));
}

//console.log(titleize(['Morgan', 'Rector'], callback))

