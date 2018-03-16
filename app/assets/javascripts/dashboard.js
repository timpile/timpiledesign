//= require rails-ujs

//= require js/core/jquery.3.2.1.min
//= require js/core/popper.min
//= require js/core/bootstrap.min
//= require js/plugins/perfect-scrollbar.jquery.min
//= require js/plugins/moment.min
//= require js/plugins/sweetalert2.min
//= require js/plugins/jquery.validate.min
//= require js/plugins/jquery.bootstrap-wizard
//= require js/plugins/bootstrap-selectpicker
//= require js/plugins/bootstrap-switch
//= require js/plugins/bootstrap-datetimepicker.min
//= require js/plugins/jquery.dataTables.min
//= require js/plugins/bootstrap-tagsinput
//= require js/plugins/jasny-bootstrap.min
//= require js/plugins/fullcalendar.min
//= require js/plugins/jquery-jvectormap
//= require js/plugins/nouislider.min
//= require js/plugins/chartjs.min
//= require js/plugins/bootstrap-notify
//= require js/now-ui-dashboard.min

//= require cocoon
//= require gritter
//= require cable
//= require turbolinks

$(document).on('turbolinks:load', function() {
  $('*:not(.bootstrap-select) > .selectpicker').selectpicker('refresh');
  $("#post_main_image").bind('change', function() {
      var file = $(this).val();
      $("#main_image_text").text(file.substr(12, file.length));
  });
  $("#post_thumb_image").bind('change', function() {
      var file = $(this).val();
      $("#thumb_image_text").text(file.substr(12, file.length));
  });
});
