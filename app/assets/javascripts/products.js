$(document).on('ready page:load', function() {
  $('#search-form').submit(function(event) {
      event.preventDefault();
      var searchValue = $('#search').val();

      $.getScript('/products?search=' + searchValue);
        .done(function(data){
          console.log(data);
          $('#products').html(data);
        });
      }).done(function(data){
        $('#products').html(data);
      });
    });
});