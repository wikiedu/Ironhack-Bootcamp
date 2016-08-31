
function caesarCipher (message,shift) {
	var messageArray = message.split("");
	var letter_position;
	console.log(messageArray)

	if (shift === undefined) {
		shift= -3
	}

	var correctMessage = messageArray.map(function (letter) {
		letter_position = letter.charCodeAt(0) + shift;
		if (letter >="A" && letter <= "Z" && letter_position > 90) {
			letter_position = letter_position - 26;
		} else if (letter >="A" && letter <= "Z" && letter_position < 65) {
			letter_position = letter_position +26;
		} else if (letter >="a" && letter <= "z" && letter_position < 97) {
			letter_position = letter_position +26;
		} else if (letter >="a" && letter <= "z" && letter_position > 122) {
			letter_position = letter_position -26;
		} else {
			letter_position = letter_position;
		}

		if ((letter >="A" && letter <= "Z") || (letter >="a" && letter <= "z")) {
			return String.fromCharCode(letter_position)
		} else {

			return letter
		}
		
	});



	console.log(correctMessage)
	var unencryptedMessage = correctMessage.reduce(function(first,next) {
		return first + next;
	});

	return unencryptedMessage
}



var encrypted = caesarCipher("Et tu, brute?", 6);

console.log(encrypted);