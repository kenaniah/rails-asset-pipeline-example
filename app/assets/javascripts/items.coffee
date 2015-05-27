# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	# Sort the table
	$(".sorting-table").stupidtable();


# Run the ready function on the ready events
$(document).ready(ready);
$(document).on('page:load', ready);
