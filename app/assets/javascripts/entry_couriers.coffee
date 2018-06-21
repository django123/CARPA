# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#e_couriers').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true

  $('.entry_courier_datepicker').datepicker
    dateFormat: 'dd-mm-yy'


  $('input.datepicker').each (input) ->
    $(this).datepicker
      dateFormat: 'yy-mm-dd'
      altField: $(this).next()
    # If you use i18n-js you can set the locale like that
    $(this).datepicker 'option', $.datepicker.regional[I18n.currentLocale()]
  return