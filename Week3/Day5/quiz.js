var read = require('read');
// 	
var id = 0;
var total = 0;

var Question = function(text, answer,point_value) {
	
	this.text = text;
	this.answer = answer;
	this.point_value = point_value;
	this.id = ++id;
}


// options = {
//     prompt: "What's your name?\n>"
// }
// // Our options object, the prompt is simply what will appear in the command line when read is called

// read(options, displayName)
// The prompt itself, passing options, and using our callback function after input

function displayName (err, user_answer){
	if (user_answer == this.answer) {
    	console.log("Correct") }
    else {
    	console.log("Wrong answer. Try it again.")
    	console.log(this.answer)
    	read(options,displayName)
    }
}
// Outputs whatever the user has entered back to the console

Question.prototype.quiz = function() {
	// console.log("hola estoy en prompt")
	options = {
		prompt: this.text
	}
	var correct_answer = this.answer;

	function displayName (err, user_answer){
	if (user_answer == correct_answer) {
    	console.log("Correct")
    	total = total + this.point_value; }
    else {
    	console.log("Wrong answer. Try it again.")
    	total = total - this.point_value;
    	read(options,displayName)
    }
}
	read(options, displayName)

}

function final_quiz (questions_array) {
	for (var i = 0; i < questions_array.length; i++) {
		questions_array[i].quiz()
	}
}



var question1 = new Question("What's your name?", "Edu");
var question2 = new Question("How old are you?", "24");
var question3 = new Question("Do you play handball", "Yes");

var questions_array = [question1, question2, question3]

final_quiz(questions_array)
// console.log(total)
// question2.quiz()
// question3.quiz()
