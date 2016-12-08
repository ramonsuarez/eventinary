$(document).on("ready page:load", function() {
  if ( $('.js-search-autocomplete').length > 0 ) {
    input = $('.js-search-autocomplete').get(0);
    autocomplete = new google.maps.places.Autocomplete(input);
    // google.maps.event.addListener(autocomplete, 'place_changed', function() {
    //   var place;
    //   place = autocomplete.getPlace();
    //   $('#place_city').val(place.vicinity);
    //   $('#place_country').val(place.address_components[5].long_name);
    //   return $('#place_region').val(place.address_components[4].short_name);
    // });
  };
});
