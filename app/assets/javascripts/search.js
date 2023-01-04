$(document).on('click', '.js-fillter-btn', function () {
  $('.js-fillter-body').slideToggle();
});

$(document).on('change', '.js-radio-button', function() {
  $(this).closest('.form-inline')
         .find('input[type=radio]:checked')
         .not(this)
         .prop('checked', false);
});
