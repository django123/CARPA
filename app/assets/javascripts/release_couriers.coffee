# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#r_couriers').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
  $('#release_courier_datepicke').datepicker
    dateFormat: 'dd-mm-yy'