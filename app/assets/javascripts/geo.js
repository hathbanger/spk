console.log('working');
var x = document.getElementById("demo");

function getLocation() {
	navigator.geolocation.getCurrentPosition(function(position) {
  console.log(position.coords.latitude, position.coords.longitude);
  	if(position.coords.latitude){
  		$('#trick_lati').val(position.coords.latitude)
  		$('#trick_long').val(position.coords.longitude)
  	}

		});
}

function showPosition(position) {
    $('#demo').text("Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude);
    }	
