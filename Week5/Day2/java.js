$('#btn').on('click', function(){
  var1 = $('#first').val()
  var2 = $('#last').val()

  if ((var1 == "") && (var2 == "")) {
    console.log('mal')
  } else {
    console.log('bien')

  }
})




//
// function checkForm(){
//   if ((document.frm1.fname.value == "") || (document.frm1.lname.value == "")) {
//     alert("please fill all the inputs");
//     console.log('mal')
//     return false;
//   } else {
//     console.log('bien')
//     document.frm1.submit();
//
//   }
// }
