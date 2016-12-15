$(document).ready(function() {

  $('input[name=attended]').on('change', function() {
    if ($(this).is(':checked')) {
      data = {
        'attended': true,
      };
    }
    else {
      data = {
        'attended': false,
      };
    }
    url = $(this).data('url');
    updateData("PATCH", url, data);
  })
})

function updateData(method, url, data) {
  $.ajax ({
    async: true,
    dataType: 'json',
    type: method,
    url: url,
    data: data,
    success: function(data) {
    }
  })
}

