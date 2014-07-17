function initialise() {
  var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.1),
    zoom: 14,
    streetViewControl: false,
    mapTypeControl: false
  };
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
  addMarker(map);
};


function addMarker(map) {
  console.log("Showing marker from geocoder results.");
  var geocoder = new google.maps.Geocoder();
  var showMarkerFromGeocoderResults = function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      var marker = new google.maps.Marker({
          position: results[0].geometry.location,
          map: map
      });
      map.setCenter(results[0].geometry.location);
    } else {
      console.warn("coulnt geocod address.");
    }
  }

function addAllPins(map, businesses_info) {
  for (i=0; i<businesses_info.length; i++){ 
    addMarker(map, businesses_info[i].address, businesses_info[i].name, businesses_info[i].display_address);

    
  }
}

  $('address').each(function(i, el) {
    var geocoderOptions = { address: $(el).text() };
    geocoder.geocode(geocoderOptions, showMarkerFromGeocoderResults);
  });

}

 $(initialise)