function sleep(time,callback) {
	var msTime = time*1000;
	setTimeout(callback,msTime);
}




// sleep(10, function () {
// 	console.log('Its been 10 seconds.')
// });


function loop(i) {          
   setTimeout(function () {   

      console.log(i);
      i--
      if (i<10 && i>0) {loop(i)}
      	if (i==0) {
      		console.log('Blast Off')
      	};
   }, 1000)
}

loop(10)