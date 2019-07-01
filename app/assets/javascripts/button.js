// split-buttonのdropdown-menuで選択したitemの名称をbuttonに表示する
// https://getbootstrap.com/docs/4.0/components/dropdowns/#split-button-dropdowns
$(function () {
  $('.dropdown-menu .dropdown-item').click(function () {
    $(this).closest('.btn-group').find('.btn-switch-value').val($(this).html());
  });
});
