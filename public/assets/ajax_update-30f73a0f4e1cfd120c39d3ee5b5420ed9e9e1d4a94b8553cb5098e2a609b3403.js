// data: {
//   url: root_path,
//   model: 'user',
//   attrs: { name: 'string' }
// }
// data: {
//   url: root_path,
//   model: 'user',
//   attr: 'name'
// }
function ajaxUpdate(el, callback = null) {
  const dataset = el[0].dataset,
        alertEl = $('.js-ajax-update-alert');

  let attrs = '';

  if (dataset.attrs == undefined) {
    attrs = { [dataset.attr]: el.val() }
  } else {
    attrs = JSON.parse(dataset.attrs);
  }

  fadeInLoading();

  $.ajax({
    type: 'PUT',
    url: dataset.url,
    data: {
      id: dataset.id,
      [dataset.model.toLowerCase()]: attrs
    },
    success: function(result) {
      if (!result.success) {
        alert('Error: ' + result.message);
        alertEl.hide();
        el.addClass('is-invalid');
      } else {
        alertEl.show();
        el.removeClass('is-invalid');

        if (callback != null) {
          callback(el, result);
        }

        flashAutoHide();
      }

      fadeOutLoading();
    }
  });
}

function ajaxUpdateCallback(el, result) {}

$(document).on('click', '.js-ajax-update-on-click', function() {
  ajaxUpdate($(this), ajaxUpdateCallback);
});

$(document).on('change', '.js-ajax-update-on-change', function() {
  ajaxUpdate($(this), ajaxUpdateCallback);
});

$(document).on('blur', '.js-ajax-update-on-blur', function() {
  if (this.defaultValue != this.value) {
    ajaxUpdate($(this), ajaxUpdateCallback);

    if (!$(this).hasClass('is-invalid')) {
      this.defaultValue = this.value;
    }
  }
});
