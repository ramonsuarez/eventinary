//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootsy
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require social-share-button
//= require_tree .

//HIDE alert after 3 Sec.
$(".alert").alert();
window.setTimeout(function() {
    $(".alert").slideUp(function() {
        $(".alert").alert('close');
    });
}, 3000);

