$(document).on('change', '#js-checked-all', function() {
  $('.js-checkbox').prop('checked', this.checked).change();
  toggleApplyType();
});

$(document).on('change', '.js-checkbox', function() {
  if ($('.js-checkbox:checked').length == $('.js-checkbox').length) {
    $('#js-checked-all').prop('checked', true);
  } else {
    $('#js-checked-all').prop('checked', false);
  }

  toggleApplyType();
});

function toggleApplyType() {
  $('.js-apply-type').prop('disabled', $('.js-checkbox:checked').length == 0);

  if ($('.js-checkbox:checked').length == 0) {
    $('.js-apply-block').hide();
    $('.js-apply-block select').prop('selectedIndex', 0);
    $('.js-apply-type').prop('selectedIndex', 0);
  }
}

$(document).on('change', '.js-apply-type', function() {
  if ($(this).val() != '') {
    $('.js-apply-block').show();
  } else {
    $('.js-apply-block').hide()
  }
});
