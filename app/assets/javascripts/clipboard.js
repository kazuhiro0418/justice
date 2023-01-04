function copyToClipboard(target) {
  $(target).select();
  document.execCommand('copy');
}

$(document).on('click', '.js-clipboard', function() {
  copyToClipboard($(this).closest('.input-group').find('input'));
});
