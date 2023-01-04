$(document).on('change', '.js-checked-all', function() {
  $('.js-checkbox').prop('checked', this.checked).change();
  toggleBulkActionType();
});

$(document).on('change', '.js-checkbox', function() {
  if ($('.js-checkbox:checked').length == $('.js-checkbox').length) {
    $('.js-checked-all').prop('checked', true);
  } else {
    $('.js-checked-all').prop('checked', false);
  }

  toggleBulkActionType();
});

function toggleBulkActionType() {
  $('#js-bulk-action-type').prop('disabled', $('.js-checkbox:checked').length == 0);

  if ($('.js-checkbox:checked').length == 0) {
    $('.js-bulk-action-block').hide();
    $('.js-bulk-action-block select').prop('selectedIndex', 0);
    $('#js-bulk-action-type').prop('selectedIndex', 0);
  }
}

$(document).on('change', '#js-bulk-action-type', function() {
  const type = $(this).val();

  $('.js-bulk-action-block').hide();

  if (type != '') {
    let submit = $('.js-bulk-action-' + type + '-submit')

    if (submit.length == 0) {
      submit = $('#js-bulk-action-submit')
    }

    $('.js-bulk-action-' + type).closest('.js-bulk-action-block').show();
    submit.closest('.js-bulk-action-block').show();
  }
});
