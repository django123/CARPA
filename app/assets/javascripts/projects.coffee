# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
###
$ ->
  if $('.pagination').length && $('#projects').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.pagination').text("Loading more projects...")
        $.getScript(url)
    $(window).scroll()###


jQuery ->
  $('#projects').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#projects').data('source')


  $('.project_datepicker').datepicker
    dateFormat: 'dd-mm-yy'

