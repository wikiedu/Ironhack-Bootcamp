var fs = require('fs');

function iteration1_3(episodes) {
	var sorted_episodes = episodes.sort(function(a,b) {
    	return a.episode_number-b.episode_number
    });

    sorted_episodes.forEach(function(episode) {
    	var rating = episode.rating.toFixed(0);
    	console.log("Title:" + episode.title + "  Episode #:" + episode.episode_number);
    	console.log(episode.description);
    	console.log("Rating:" + episode.rating + " " + "*".repeat(rating));
    
    })
}

function iteration4(episodes) {

	var filtered_episodes = episodes.filter( function(episode) {
		return episode.rating <= 8.5
	})

	iteration1_3(filtered_episodes)

}

function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);

    iteration4(episodes);
    // console.log(episodes) 
}



fs.readFile("./episodes.json", 'utf8', fileActions);




// console.log(episodes[0].title)