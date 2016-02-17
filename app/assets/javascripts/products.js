$(document).on('ready page:load', function() {
  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.getScript('/products?search=' + searchValue);
  });
});

// Below does not need to be in doc.ready otherwise the scroll does not work after receiving an AJAX response. It also only works when there is a scroll bar (ie: if you search for something without a scroll bar, then search again, you can't scroll)

$(window).scroll(function() {
    var url = $('.pagination span.next').children().attr('href');
    if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      $('.pagination').text("Fetching more products...");
      return $.getScript(url);
    }
 });
