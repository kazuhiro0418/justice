function fadeInLoading() {
  $('.js-loading-container').fadeIn(250);
}

function fadeOutLoading() {
  $('.js-loading-container').fadeOut(250);
}

$(document).on('click', '.js-loading', function() {
  fadeInLoading();
});
