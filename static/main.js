$(function(){
  $('.message .close').on('click', function() {
    // $(this).closest('.message').transition('fade');
    $(this).closest('.message').fadeOut();
  });

  $('#top-message').delay(2000).fadeOut();
});
