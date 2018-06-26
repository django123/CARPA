// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require dropzone
//= require datatables
//= require dataTables/jquery.dataTables
//= require jquery-ui/widgets/datepicker
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap.js
//= require moment
//= require fullcalendar
//= require daterangepicker
//= require Chart.bundle
//= require chartkick
//= require_tree .



//turbolinks: load'

$(document).on('turbolinks:load', function(event) {
    var chart;
    chart = Chartkick.charts['project_phase'].getChartObject();
    setInterval((function() {
        var indexToUpdate;
        indexToUpdate = Math.round(Math.random() * 30);
        chart.data.datasets[0].data[indexToUpdate] = Math.random() * 100;
        chart.update();
    }), 10);
});

window.ClientSideValidations.callbacks.element.fail = function(element, message, callback) {
    $('.submit').prop("disabled",true);
    callback();
};

window.ClientSideValidations.callbacks.element.pass = function(element, callback) {
    $('.submit').prop("disabled",false);
    callback();
};
