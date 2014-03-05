function test() {
	navigator.geolocation.getCurrentPosition (function (pos)
	{
	  //getting gps coords
	  var lat = pos.coords.latitude;
	  var lng = pos.coords.longitude;
	  $("input[name=latitude]").val(lat);
	  $("input[name=longitude]").val(lng);
	  ///google maps
	  var latlng = new google.maps.LatLng (lat, lng);
	  var latlng2 = new google.maps.LatLng (50.760296, 15.071719);
	  var options = {
	    zoom : 15, 
	    center : latlng, 
	    mapTypeId : google.maps.MapTypeId.ROADMAP 
	  };
	  var content = $("#map-canvas");
	  content.height (screen.height - 50);
	  var map = new google.maps.Map (content[0], options);	  
	  new google.maps.Marker ( 
	  { 
	    map : map, 
	    animation : google.maps.Animation.DROP,
	    position : latlng  
	  });
	  var marker = new google.maps.Marker ( 
	  { 
	    map : map, 
	    animation : google.maps.Animation.DROP,
	    position : latlng2,
	    icon: '/web/images/icons/restaurant.png',
	    title: 'Potrefena husa'
	  });
	  google.maps.event.addListener(marker, 'click', function() {
	    	alert('Potrefena husa');
	    }	);
	});
}