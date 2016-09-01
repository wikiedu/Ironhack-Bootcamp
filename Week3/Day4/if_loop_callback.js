function blastOff(n){
  var counter = 0;

  function starter(){
      if (counter <= n) {
        console.log(counter);
        counter += 1;
        setTimeout(starter, 1000);
      } else {
        console.log("blastOff!")
      }
  }
  starter()
}

blastOff(10);
