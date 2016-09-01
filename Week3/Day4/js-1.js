var Animal = function(noise){
  this.noise = noise
}

var dog = new Animal('bau');
var cat = new Animal('miaao')

Animal.prototype.whoAmI = function(){
  console.log(this);
}

// console.log(dog)
//
// console.log(Animal.prototype)

dog.whoAmI();
cat.whoAmI();
