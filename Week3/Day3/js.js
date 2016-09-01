var words = ["darling", "bygone", "landing", "cheaply", "assumed", "incorrectly", "attention", "agent"];

function decoder(array){
  var message = "";
  var counter = 0;
  for (var i = 0; i < array.length; i++) {
    if (i == 5) {
      counter = 0;
    }
    message += array[i].charAt(counter);
    counter++;
  }
  return message
}

// console.log(decoder(words));

var sentence = 'fill the proper tank for the cow'

function superDecoder(sentence, type, direction){
  var array = sentence.split(" ");

  if (type == 'even') {
    array = array.filter(function(wordOfArray, indexOfWord){
      return indexOfWord % 2 == 0
    })
  } else if (type == 'odd'){
    array = array.filter(function(word, index){
      return index % 2 != 0
    })
  }

  if (direction == 'backwards') {
    array = array.reverse()
  }

  return decoder(array)
}

console.log(superDecoder(sentence, 'even', 'backwards'));
