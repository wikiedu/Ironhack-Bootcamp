
var hola1 = function cellSwitch() {
$('.cell').each( function (index, item) {
  // item is an HTML element not a jQuery Object
  var myItem = $(item) // convert HTML element to jQuery Object
  if (index % 2) {
    myItem.toggleClass('active');
    // myItem.toggleClass('active');
  }
})
}

var hola2 = function cellSwitch() {
$('.cell').each( function (index, item) {
  // item is an HTML element not a jQuery Object
  var myItem = $(item) // convert HTML element to jQuery Object
  if (index !% 2) {
    myItem.toggleClass('active');
    // myItem.toggleClass('active');
  }
})
}

var hola3 = function cambio () {
  var counter = 0;
  if (counter % 2){
    hola1
    counter += 1
  }else {
    hola2
    counter += 1
  }
}


setInterval(hola3,500)




// function switch() {
// 	// $('.cell').addClass('active')
// 	$('.cell').toggleClass('active-head')
// }
