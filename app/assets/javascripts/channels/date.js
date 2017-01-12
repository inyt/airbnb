$(function() {
  $(document).on('turbolinks:load', function(){
    $('input[name="startDate"]').daterangepicker({
        autoUpdateInput: false,
        autoApply: true,
        format: 'YYYY/MM/DD',
        showDropdowns: false,
        locale: {
            cancelLabel: 'Clear'
        }
    });

    $('input[name="startDate"]').on('apply.daterangepicker', function(ev, picker) {
        $(this).val(picker.startDate.format('YYYY/MM/DD'));
        $('input[name="endDate"]').val(picker.endDate.format('YYYY/MM/DD'));
    });

    $('input[name="startDate"]').on('cancel.daterangepicker', function(ev, picker) {
        $(this).val('');
    });
  });
});
