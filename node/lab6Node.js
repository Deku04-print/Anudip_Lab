/*Question :  Write a Node.js program that displays two separate messages in the console: 
● "Hello, this is my first Node.js program!" 
● "I am excited to learn more about Node.js!" 
*/

console.log("Hello, this is my first Node.js program!");
console.log("I am excited to learn more about Node.js!");


// Then, modify the program to concatenate these two messages into a single line and display: 
// "Hello, this is my first Node.js program! I am excited to learn more about Node.js!"

let message1 = "Hello, this is my first Node.js program!";
let message2 = "I am excited to learn more about Node.js!";


let combinedMessage = message1 + " " + message2;

console.log(combinedMessage);

