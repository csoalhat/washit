// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require_self

$(document).ready(function(){

  $('.order_status').click(function(event) {
    event.preventDefault();

    // Find out the id of this order
    var link = $(this).attr('href').split('/');
    var orderId = link[link.length - 1]

    // Find current status by navigating through on page elements
    var currentStatus = $($(this).parent().prev()[0]).text();

    // Define what data we're posting to the order controller
    if (currentStatus == 'pending') {
      var data = 'processed';
    } else if (currentStatus == 'processed') {
      var data = 'archived';
    } else {
      var data = 'pending';
    }

    // Let us know AJAX has worked
    function ajaxSuccess() { 
      location.reload();
    };

    // Make the AJAX call to the orders update action
    $.ajax({
      url:  '/orders/' + orderId,
      dataType: 'json', 
      type: 'PUT', 
      data: {order:{status:data}},
      success: function() {
        ajaxSuccess();
        currentStatus.text(data);
      }
    });

  });

})
