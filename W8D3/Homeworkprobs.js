
const titleize = function(array, callback) {
    newArr = array.map((name)=> { return`Mx ${name} Jingleheimer Schmidt` })
    callback(newArr)
}

const callback = (array) => {
    array.forEach(name => console.log(name));
}

//console.log(titleize(['Morgan', 'Rector'], callback))
//Constructors, Prototypes and This

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function (){
    console.log(`${this.name} goes phrRRRRRRRRR!!!!!!!`)
} 
Elephant.prototype.grow = function(){
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function(){
    const trick = this.tricks[Math.floor(Math.random()*this.tricks.length)];
    return trick;
}

const lela = new Elephant('Lela', 24, ['jump', 'spin', 'take carbon out of atmosphere'])

