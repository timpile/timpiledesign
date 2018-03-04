//= require rails-ujs

//= require js/core/jquery.3.2.1.min
//= require js/core/popper.min
//= require js/core/bootstrap.min

//= require js/plugins/moment.min
//= require js/plugins/bootstrap-datetimepicker.min
//= require js/plugins/bootstrap-selectpicker
//= require js/plugins/bootstrap-switch
//= require js/plugins/bootstrap-tagsinput
//= require js/plugins/jasny-bootstrap.min

//= require js/now-ui-kit
//= require js/plugins/nouislider.min

//= require cocoon
//= require gritter
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
    // the body of this function is in assets/js/now-ui-kit.js
    nowuiKit.initSliders();
});

function scrollToDownload() {

    if ($('.section-download').length != 0) {
        $("html, body").animate({
            scrollTop: $('.section-download').offset().top
        }, 1000);
    }
}
