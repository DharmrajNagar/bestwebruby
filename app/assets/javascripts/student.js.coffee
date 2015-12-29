# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->       
        $('#student_state_id').parent().hide()
	states = $('#student_state_id').html()

         $('#student_country_id').change ->
	  country = $('#student_country_id :selected').text()
	  options = $(states).filter("optgroup[label='#{country}']").html()
if options
    $('#student_state_id').html(options)
     $('#student_state_id').parent().show()
  else
   $('#student_state_id').empty()
   $('#student_state_id').parent().hide()
