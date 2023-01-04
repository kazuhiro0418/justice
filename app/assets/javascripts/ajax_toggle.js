// data {
//   url:   hoge_path(hoge),
//   model: hoge.class.name.underscore,
//   attr:  'is_deleted'
// }
function ajaxToggle(el) {
  const dataset = el[0].dataset,
        checked = el[0].checked;

  fadeInLoading();

  $.ajax({
    type: 'PUT',
    url: dataset.url,
    data: {
      [dataset.model.toLowerCase()]: {
        [dataset.attr]: checked
      }
    },
    success: function(result) {
      if (!result.success) {
        alert('Error: ' + result.message);
        el.prop('checked', !checked);
        el.addClass('is-invalid');
      } else {
        el.removeClass('is-invalid');
      }

      fadeOutLoading();
    }
  });
}

$(document).on('click', '.js-ajax-toggle', function() {
  ajaxToggle($(this));
});
