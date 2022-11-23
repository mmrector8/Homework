//Callbacks

// window.setTimeout(function(){
//     alert('bedtime little morguita')
// }, 3000)

// function hammerTime(time) {
//     window.setTimeout (function(){
//         `${time} is hammertime!`
//     })
// }

const readline = require('readline')
const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBisctuits (){
    reader.question("Would you like some tea? ", function(res) {
        console.log(`You replied ${res}`)
        reader.question("Would you like some biscuits? ", function (res2){
            console.log(`You replied ${res}`)

            const first = (res === 'yes') ? 'do' : 'don\'t';
            const second = (res === 'yes') ? 'do': 'don\'t';

            console.log(`So you ${first} want tea and you ${second} want biscuits`);
            reader.close();
        });
    });
}

teaAndBisctuits();