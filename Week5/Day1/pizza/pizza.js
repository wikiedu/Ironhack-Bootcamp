// Write your Pizza Builder JavaScript in this file.
// function add(ingredient) {

// }

var total = 13;
function suma(button,price){

	$('strong').empty()

	if ($(button).hasClass('active')) {
		total = total + price;
	} else {
		total = total - price;
	}
	$('strong').append('$' + total)

}


$('.btn-pepperonni').click(function(){
	$('.pep').toggle()
	$('.btn-pepperonni').toggleClass('active')
	suma('.btn-pepperonni',1)
})

$('.btn-mushrooms').click(function(){
	$('.mushroom').toggle()
	$('.btn-mushrooms').toggleClass('active')
	suma('.btn-mushrooms',1)
})

$('.btn-green-peppers').click(function(){
	$('.green-pepper').toggle()
	$('.btn-green-peppers').toggleClass('active')
	suma('.btn-green-peppers',1)
})


$('.btn-sauce').click(function(){
	$('.sauce').toggleClass('sauce-white')
	$('.btn-sauce').toggleClass('active')
	$('strong').empty()

	suma('.btn-sauce',3)
})

$('.btn-crust').click(function(){
	$('.crust').toggleClass('crust-gluten-free')
	$('.btn-crust').toggleClass('active')
	suma('.btn-crust',5)
})