/**
 * 
 */
 
 
 function initialize(){
		var mapCanvas= document.getElementById('map-canvas');
		var map= new google.maps.Map(mapCanvas);
		   var mapOptions = {
	      center: new google.maps.LatLng(37.335413, -121.881072),
	      zoom: 15,
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    }
		var map= new google.maps.Map(mapCanvas,mapOptions);
		}
		  	google.maps.event.addDomListener(window, 'load', initialize);