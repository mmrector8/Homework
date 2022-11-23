
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
    const trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
    return trick;
}

Elephant.paradeHelper = function(elephant) {
    console.log(`${elephant.name} is parading by!`)
}


let lela = new Elephant('Lela', 24, ['jump', 'spin', 'take carbon out of atmosphere'])
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];
//Elephant.paradeHelper(herd)
//const parade = herd.forEach((elephant)=> (Elephant.paradeHelper(elephant)))


//Breakfast and Closures

const dinerBreakfast = function() {
    let order = "I want thai red curry"
    console.log(order)

    return function (food){
        order =`${order}, and ${food} please`;
        console.log(order)
    }
}
let bfastOrder = dinerBreakfast();
//console.log(bfastOrder(['coconut', 'ice cream']))