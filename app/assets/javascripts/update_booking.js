// Section details
// section_client_called: Was client called question
// section_contractor_call_answered : Did client answer question
// section_contractor_message_left : Did contractor leave a message question
// section_date_set : Did client and contractor set a date question
// section_reason_for_no_passage_date : Comment area
// section_date_picker : Date picker

$(document).ready(function() {

  // section : Was client called question
  $('input[name=attended]').on('change', function() {
    console.log("hello")
    // Get selected radio button
    button_selected = $('input[name=attended]:checked').val();

    url = $(this).data('url');
    data = {
      'order[client_called]': true,
    };
    updateData("PATCH", url, data);
})

    $('input[name=attended]').on('change', function() {
      console.log("hello")
  })

// Ajax call to udpate data
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

