console.log('working');
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
    	console.log(navigator.geolocation);
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    $('#demo').text("Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude);
    }	
