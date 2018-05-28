# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ae_couriers

jQuery ->
  $('#ae_couriers').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true