var Car = function(model, noise){
  this.model = model;
  this.noise = noise;
  this.numWheels = 4;
}

Car.prototype = {
  makeNoise: function(){
    console.log(this.noise);
  },
  showNumWheels: function(){
    console.log("I have " + this.numWheels + " wheels")
  }
}



var ferrari = new Car("Ferrari California", "BRRRRROOOOOOM");

ferrari.makeNoise();
ferrari.showNumWheels();
