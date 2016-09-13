


('#btn').on('click', function(){
  $.ajax({
    type: "GET",
    url: "https://ironhack-characters.herokuapp.com/characters",
    success: response
  })
})


function response(){
  console.log('hello')
}





// Create the listner for document.on 'ready'
// now we can move the script tag in the head tag
$(function () {
  $('#btn').on('click', function () {
    var name = $('#artistName').val();
    var baseUrl = "https://api.spotify.com/v1/search?type=artist&query=";
    // var url = baseUrl + pokemonId;
    $.ajax({
      type: 'GET',
      url: baseUrl,
      success: function () {
        console.log('hello')
      },
      error: function () {
        console.log('in da error');
      }
    });
    console.log('last line');
  })
});
