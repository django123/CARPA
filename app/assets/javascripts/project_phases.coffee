# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#p_projects').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true


  $(document).ready ->
# disable auto discover
    Dropzone.autoDiscover = false
  # grap our upload form by its id
    $('#dropzone_upload').dropzone
      maxFilesize: 4
      paramName: 'project_phase[document]'
      addRemoveLinks: true
      success: (file, response) ->
# find the remove button link of the uploaded file and give it an id
# based of the fileID response from the server
        $(file.previewTemplate).find('.dz-remove').attr 'id', response.fileID
      # add the dz-success class (the green tick sign)
        $(file.previewElement).addClass 'dz-success'
        return
      removedfile: (file) ->
# grap the id of the uploaded file we set earlier
        id = $(file.previewTemplate).find('.dz-remove').attr('id')
      # make a DELETE ajax request to delete the file
        $.ajax
          type: 'DELETE'
          url: '/project_phases/' + id
          success: (data) ->
            console.log data.message
            return
        return
  return
