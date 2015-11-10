function clickHeart(station) 
{
	currentStation = $(station);
	stationId = currentStation.data()._id;
	// alert('clicked on ' + stationId + '!');
	if (currentStation.hasClass('hearted')) 
	{
		deleteFavorite(currentStation);
	} 
	else 
	{
		addFavorite(currentStation);
	}
}
function addFavorite(station) 
{
	console.log("you are adding a new favorite station!");
	currentStation = $(station);
	stationId = currentStation.data()._id;
	currentStation.toggleClass('hearted');

	$.post("/favorites/new/" + stationId, function(){
		console.log("You just added station " + stationId + " to your favorites!");
	});
}

function deleteFavorite(station) 
{	
	console.log("you are deleting a favorite station!");
	currentStation = $(station);
	stationId = currentStation.data()._id;
	currentStation.toggleClass('hearted');

	var path = "/favorites/"+ stationId;
	$.ajax({
		url: path,
		type: 'DELETE',
		success: function(res){
			console.log("You just deleted station " + stationId + " from your favorites!");
		}
	});
}

function addHeart(station)
{
	currentStation = $(station);
	currentStation.addClass('hearted');
}


