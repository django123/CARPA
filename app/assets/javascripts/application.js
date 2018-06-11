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
// require Chart.bundle
// require chartkick
// require jquery-ui/sortable
//= require datatables
//= require dataTables/jquery.dataTables
//= require jquery-ui/widgets/datepicker
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap.js
//= require_tree .

//$(document).ready( function(){
  //$("table[role='datatable']").each(function(){
      //$("#datatable").dataTable({
          //pagingType: "full_numbers",
          //processing: true,
          //serverSide: true,
          //ajax: $(#datatable).data('source'),
          //responsive: true
      //});
  //});
//})

//turbolinks:load'

flatpickr(".datepicker");

Turbolinks.enableProgressBar();
Turbolinks.enableTransitionCache();


window.ClientSideValidations.callbacks.element.fail = function(element, message, callback) {
    $('.submit').prop("disabled",true);
    callback();
};

window.ClientSideValidations.callbacks.element.pass = function(element, callback) {
    $('.submit').prop("disabled",false);
    callback();
};
