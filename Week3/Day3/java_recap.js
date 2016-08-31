// function checkInPassenger(name, customersArray) {
// 	var passengerChecked;
// 	for (var i = 0; i < customersArray.length; i++) {
// 		if (customersArray[i] == name) {
// 			passengerChecked = function() {
// 				console.log ("Hi, " + name +". You're passenger #" + (i+1));
// 			};
// 		}
// 	}
// 	return passengerChecked; 
// }

// var flightToBali = ["Wayan", "Putu", "Gede", "Ni Luh", "Nyoman"];
// var counterCheckIn = checkInPassenger("Gede", flightToBali);
// counterCheckIn();


// var exampleArray = [2, -5, 10, 5, 4, -10, 0]


// function process(array) {
// 	var position = [];
// 	array.forEach (function (number1,index1){
// 		array.forEach (function (number2, index2) {
// 			if (number1 === number2) {
// 				var i = String(index1)
// 				var j = String(index2)
// 				position.push(i + ","+ j)
// 			}
// 		});
// 	});
// 	return position
// }

// var resultado = process(exampleArray);
// resultado ();



// var stringNums = "80:70:90:100"

// function averageColon(numberString) {
// 	var arrayNums = numberString.split(":");
// 	var lon = arrayNums.length;

// 	return arrayNums.reduce(function(first,next) {
// 		return parseInt(first) + parseInt(next);
// 	})/lon;


// }

// console.log(averageColon(stringNums))


var words = ["darling", "bygone", "landing", "cheaply", "assumed", "incorrectly", "attention", "agent"];
var sentence = "fill the proper tank for the cow"

function super_decode(sentence, numberType, order) {

	var arraySentence = sentence.split(" ")
	var newArray = []
	if (numberType == "even") {
		arraySentence.forEach(function(word,index){
			if (index % 2 == 0) {
				newArray.push(word)
			}
		})
	} 
	else {
		arraySentence.forEach(function(word,index){
			if (index % 3 == 0) {
				newArray.push(word)
			}
		})
	}

	if (order == "backwards") {
		 newArray.reverse()
	}

	function secretMessage(arrayWords) {
		var i = 0;
		var secretArray = [];
		var finalString
		arrayWords.forEach(function(word,index) {
			
			if (index === 5) {
				i=0
			}
			secretArray.push(word[i])
			i=i+1;
		})

		secretArray.reduce (function (first,next) {
			return finalString=first + next
		})
		return finalString
	}
	return secretMessage(newArray)
}
console.log(super_decode(sentence, "even", "backwards"))


