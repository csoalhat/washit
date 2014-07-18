
//  function initialise() {
//    var mapOptions = {
//      center: new google.maps.LatLng(51.5, -0.1),
//      zoom: 14,
//      streetViewControl: false,
//      mapTypeControl: false
//    };
//    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
//    addMarker(map);
//  };

//  // function addMarker(map){
//  //   var position = new google.maps.LatLng(51.522, -0.1095);
//  //   var marker = new google.maps.Marker({
//  //       position: position,
//  //       map: map,
//  //       title: "GA London"
//  //   });

// function addMarker(map) {
//    function(results, status) {
//        var marker = new google.maps.Marker({
//            position: center,
//            map: map,
//            icon: icon
//        });
//        map.setCenter(results[0].geometry.location);
//      } else {
//        console.warn("coulnt geocode address.");
//      }
//    }

//    $('address').each(function(i, el) {
//      var geocoderOptions = { address: $(el).text() };
//      geocoder.geocode(geocoderOptions, showMarkerFromGeocoderResults);
//    });
//  }



   
 // $(initialise)