$(function() {
  $(document).on('turbolinks:load', function(){
    $input = $('input[name="startDate"], input[name="endDate"]');
    $input.daterangepicker({
        autoUpdateInput: false,
        autoApply: true,
        format: 'YYYY/MM/DD',
        showDropdowns: false,
        locale: {
            cancelLabel: 'Clear'
        }
    });

    $input.on('apply.daterangepicker', function(ev, picker) {
        $('input[name="startDate"]').val(picker.startDate.format('YYYY/MM/DD'));
        $('input[name="endDate"]').val(picker.endDate.format('YYYY/MM/DD'));
    });

    $input.on('cancel.daterangepicker', function(ev, picker) {
        $input.val('');
    });
  });
});
