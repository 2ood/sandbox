//Notes.
//CamelCase used
//var, let, const used when defining

//datatypes
const datatypes= {
  undefined: undefined,
  null: null,
  NaN : NaN,
  Boolean: true,
  integer: 1,
  smallest : Number.MIN_VALUE,
  biggest : Number.MAX_VALUE,
  double : 1.2,
  String : "hello",
};
console.log(datatypes);

//array
const arrayExample =  ["mon","tue"];
console.log(arrayExample[0]); //access
arrayExample.push("wed");//Add one more item to the array

//object
const player = {
  name: "nico",
  points: 10,
  greet : function(){
  console.log("Greetings!");
  },
};
console.log(player);
player.lastName="Choi"; //update or add properties
console.log(player.points); //access property
player.greet();//access function

//functions
function sayHello(name) {
  return ("hello, "+name);
}
console.log(sayHello("Nico"));

//useful built-in functions
/*
console.log("a", 1);
alert("Alert");
if(confirm("Confirm")) console.log("confirmed");
str = prompt("The return of prompt func is string type"); //null if cancelled.
console.log(typeof str); //shows datatype

parseInt("15");

isNaN("string");
*/


//conditionals
const age = 15;
if(age < 20) console.log("You're not allowed to drink");
else if(age < 65) console.log("You're not allowed to drive");
else console.log("Free to go");
//loops
