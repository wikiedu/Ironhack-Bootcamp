
$(function () {
  $('#btn').on('click', function () {
    var name = $('#artistName').val();
    var baseUrl = "https://api.spotify.com/v1/search?type=artist&query=";
    // var url = baseUrl + pokemonId;
    $.ajax({
      type: 'GET',
      url: baseUrl + name,
      success: function (data) {
        var artistsArray = data.artists.items;
        console.log(artistsArray)
        artistsArray.forEach(function(artist){
          // artists = artists.add('<li> <a href="#" id="artistClick" >'+object.name+ '<img src='+object.images[0].url+'/>'+'</a> </li>');
          var artistLi = $('<div id="artist.id" >' + artist.name + '<img src='+ artist.images[0].url +'>'+'</div>');
          $('.artistList').append(artistLi);
        })

        console.log(artistsArray)
      },
      error: function () {
        console.log('Error');
      }
    });
    console.log('last line');
  })
});



// $(function () {
//   $('#artistClick').on('click', function () {
//     var name = $('#artistName').val();
//     var baseUrl = "https://api.spotify.com/v1/search?type=artist&query=";
//     // var url = baseUrl + pokemonId;
//     $.ajax({
//       type: 'GET',
//       url: baseUrl + name,
//       success: function (data) {
//         var artistsArray = data.artists.items;
//         var artists = $();
//         artistsArray.forEach(function(object){
//           // artists = artists.add('<li> <a href="#" id="artistClick" >'+object.name+ '<img src='+object.images[0].url+'/>'+'</a> </li>');
//           artists = artists.add('<li> <a href="#" id="artistClick" >'+object.name+'</a> </li>');
//           $('.artistList').append(artists);
//           console.log(object.name);
//         })
//
//         console.log(artistsArray)
//       },
//       error: function () {
//         console.log('Error');
//       }
//     });
//     console.log('last line');
//   })
// });
