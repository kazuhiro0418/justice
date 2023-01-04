let flash_timer = null;

function flashHide() {
  $('.js-navbar-alert').slideUp(500);
  $('.js-alert').slideUp(500);
}

function flashAutoHide() {
  if ($('.js-navbar-alert').length > 0 || $('.js-alert').length > 0) {
    clearTimeout(flash_timer);

    if ($('.alert-success').length > 0) {
      flash_timer = setTimeout('flashHide()', 2500);
    } else {
      flash_timer = setTimeout('flashHide()', 5000);
    }
  }
}

$(document).on('click', '.close', function() {
  flashHide()
});

$(document).on('turbolinks:load', function() {
  flashAutoHide()
});

$(function() {
  flashAutoHide()
});
